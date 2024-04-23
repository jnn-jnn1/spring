package com.study.core;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.stereotype.Component;

public class Application12 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application12.class);
        MyClass122 b1 = bf.getBean(MyClass122.class);
        MyClass121 b2 = b1.getField();
        System.out.println("b2 = " + b2);
    }
}

@Component
class MyClass121 {
}

@Component
@Getter
@RequiredArgsConstructor // final인 필드를 파라미터로 받는 생성자 자동 생성
class MyClass122 {
    private final MyClass121 field;

//    // 필드가 final이고 생성자로 할당하면 자동으로 주입됨
//    MyClass122(MyClass121 field) {
//        this.field = field;
//    }
}