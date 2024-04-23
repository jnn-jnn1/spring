package com.study.core;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application15 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application15.class);
        MyClass152 b = bf.getBean(MyClass151.class).getDependency();
        System.out.println("b = " + b);
    }
}

@Getter
@Setter
@Component
class MyClass151 {
    private MyClass152 dependency;
}

@Component
class MyClass152 {
}