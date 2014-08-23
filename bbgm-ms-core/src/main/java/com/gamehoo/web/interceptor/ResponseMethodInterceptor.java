package com.gamehoo.web.interceptor;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

//public class ResponseMethodInterceptor implements MethodInterceptor {
//
//    /*public void afterReturning(Object returnValue, Method method,
//                               Object[] args, Object target) throws Throwable {
//        System.out.println(returnValue);
//        System.out.println(target);
//        System.out.println("增加20个积分");
//    }*/
//
//    @Override
//    public Object invoke(MethodInvocation invocation) throws Throwable {
//        System.out.println("前：" + System.currentTimeMillis());
//        Object obj = invocation.proceed();//此句执行业务逻辑方法
//        System.out.println("后：" + System.currentTimeMillis());
//        System.out.println(obj);
//        return obj;//返回值 可不返回obj（业务逻辑的返回值）
//    }
//}

//@Aspect
public class ResponseMethodInterceptor implements MethodInterceptor {

    /*public void afterReturning(Object returnValue, Method method,
                               Object[] args, Object target) throws Throwable {
        System.out.println(returnValue);
        System.out.println(target);
        System.out.println("增加20个积分");
    }*/

    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable {
        System.out.println("前：" + System.currentTimeMillis());
        Object obj = invocation.proceed();//此句执行业务逻辑方法
        System.out.println("后：" + System.currentTimeMillis());
        System.out.println(obj);
        return obj;//返回值 可不返回obj（业务逻辑的返回值）
    }
}
