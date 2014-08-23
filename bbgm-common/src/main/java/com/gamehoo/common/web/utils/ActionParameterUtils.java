package com.gamehoo.common.web.utils;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.beans.PropertyDescriptor;
import javax.servlet.ServletRequest;

import com.gamehoo.domain.ap.JsonBean;
import com.gamehoo.tools.MatchTool;
import com.gamehoo.tools.ObjectUtils;
import com.google.gson.Gson;
import org.springframework.beans.BeanUtils;
import com.gamehoo.domain.ap.BaseAp;

public class ActionParameterUtils {
    private static boolean isNumber(String value, Class writeType) {
        boolean isNumber = false;
        Class[] clz = {short.class, int.class, float.class, long.class,
                double.class, Short.class, Integer.class, Float.class, Long.class, Double.class};
        if (MatchTool.matchNumber(value)) {
            for (int i = 0; i < clz.length; i++) {
                Class c = clz[i];
                if (c == writeType) {
                    return true;
                }
            }
        }
        return false;
    }

    public static <T extends BaseAp> T request2Ap(final ServletRequest request, Class<? extends BaseAp> apClass) {
        BaseAp ap = null;
        try {
            ap = apClass.newInstance();
            PropertyDescriptor[] prs = BeanUtils.getPropertyDescriptors(apClass);
            for (PropertyDescriptor p : prs) {
                String para = request.getParameter(p.getName());
                if (null == para || null == p.getWriteMethod()) {
                    continue;
                }
                Class paramType = p.getWriteMethod().getParameterTypes()[0];
                try {
                    Object v = null;
                    if ((paramType == short.class || paramType == float.class ||
                            paramType == int.class || paramType == long.class ||
                            paramType == Short.class || paramType == Float.class ||
                            paramType == Integer.class || paramType == Long.class) && !isNumber(para, paramType)) {
                        continue;
                    }else if (isNumber(para, paramType)) {
                        if (ObjectUtils.isEmpty(para)) {
                            continue;
                        }
                        v = Double.parseDouble(para);
                        if (paramType == short.class || paramType == float.class ||
                                paramType == int.class || paramType == long.class) {
                            Object numObj = Double.class.getMethod(paramType.toString() + "Value", null).invoke(v, null);
                            p.getWriteMethod().invoke(ap, numObj);
                        } else if (paramType == Short.class || paramType == Float.class ||
                                paramType == Integer.class || paramType == Long.class) {
                            Object numObj = Double.class.getMethod(paramType.getDeclaredField("TYPE").get("TYPE") + "Value", null).invoke(v, null);
                            p.getWriteMethod().invoke(ap, numObj);
                        } else {
                            p.getWriteMethod().invoke(ap, v);
                        }
                        continue;
                    } else if (paramType == Boolean.class || paramType == boolean.class) {
                        v = Boolean.parseBoolean(para);
                    } else if (paramType == Date.class) {
                        if (MatchTool.matchLong(para)) {
                            v = new Date(Long.parseLong(para));
                        } else {
                            //todo string to date
                        }
                    } else if (paramType.newInstance() instanceof JsonBean) {
                        Gson gson = new Gson();
                        v = gson.fromJson(para, paramType);
                    } else if (paramType == String.class) {
                        v = para;
                    }
                    if (!"undefined".equals(v)) {
                        p.getWriteMethod().invoke(ap, v);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

        return (T) ap;
    }
}
