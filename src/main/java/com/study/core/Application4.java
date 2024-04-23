package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application4 {
    public static void main(String[] args) {
        BeanFactory factory = SpringApplication.run(Application4.class, args);
        MyClass41 b1 = factory.getBean(MyClass41.class);
        MyClass42 b2 = factory.getBean(MyClass42.class);

        System.out.println("b1 = " + b1);
        System.out.println("b2 = " + b2);

        // 싱글톤 패턴으로 객체는 하나만 생성
        MyClass41 b3 = factory.getBean(MyClass41.class);
        System.out.println("b3 = " + b3);

        // 모두 같은 객체
        MyClass41 obj = b2.getObj();
        System.out.println("obj = " + obj);
    }
}

@Component
class MyClass41 {

}

@Component
@Getter
class MyClass42 {
    // Dependency Injection (DI)
    @Autowired
    private MyClass41 obj;
}