package com.gamehoo.tools;

import com.google.gson.Gson;

import java.io.*;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Map;

public class ObjectUtils {
    public static boolean isEmpty(Object o) {
        if (o instanceof String) {
            return null == o || "".equals(o);
        } else if (o instanceof Collection) {
            Collection c = (Collection) o;
            return c.size() == 0;
        } else if (o instanceof Map) {
            Map m = (Map) o;
            return m.size() == 0;
        }

        return null == o;
    }

    public static Timestamp getTimestamp(Long time) {
        return isEmpty(time) ? null : new Timestamp(time);
    }

    /*
     * 深度clone
     */
    public static Object cloneObject(Serializable obj) {
        try {
            ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
            ObjectOutputStream out = new ObjectOutputStream(byteOut);
            out.writeObject(obj);
            ByteArrayInputStream byteIn = new ByteArrayInputStream(byteOut.toByteArray());
            ObjectInputStream in = new ObjectInputStream(byteIn);
            return in.readObject();
        } catch (Exception e) {

        }
        return null;
    }

    /**
     * 父子类属性拷贝
     * @param obj
     * @param targetClass: 父类或者子类
     * @param <T>
     * @return
     */
    public static <T> T cloneBaseClass(Object obj, Class<T> targetClass) {
        //TODO WITH reflect
        Gson gson = new Gson();
        String g = gson.toJson(obj);
        return gson.fromJson(g, targetClass);
    }
}
