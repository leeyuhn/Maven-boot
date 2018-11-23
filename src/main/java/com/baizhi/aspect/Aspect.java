package com.baizhi.aspect;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.springframework.context.annotation.Configuration;

@org.aspectj.lang.annotation.Aspect
@Configuration
public class Aspect {
    /**
     * 前置通知方法
     */
    @Before("execution(* com.baizhi.service.*.*(..))")
    public void before(){
        System.out.println("方法执行前执行");
    }
    /**
     * 后置通知方法
     */
    @After("execution(* com.baizhi.service.*.*(..))")
    public void after(){
        System.out.println("方法执行后执行");
    }
}
