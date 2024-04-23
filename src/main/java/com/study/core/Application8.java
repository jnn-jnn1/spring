package com.study.core;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application8 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(Application8.class);
        MyClass81 b1 = context.getBean(MyClass81.class);
        MyClass82 b2 = context.getBean(MyClass82.class);
        Object b3 = context.getBean("myBean81");
        Object b4 = context.getBean("myBean82");
        System.out.println(b1 == b3);
        System.out.println(b2 == b4);
    }
}

@Component
class MyClass81 {

}

@Component
class MyClass82 {

}

@Configuration
class MyConfiguration8 {
    @Bean
    public MyClass81 myBean81() {
        return new MyClass81();
    }

    @Bean
    public MyClass82 myBean82() {
        return new MyClass82();
    }
}