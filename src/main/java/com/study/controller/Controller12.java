package com.study.controller;

import com.study.domain.MyBean121;
import com.study.domain.MyBean122;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("age", 30);
//        model.addAttribute("products", List.of());
        model.addAttribute("products", List.of("apple", "banana"));
        model.addAttribute("member",
                Map.of("country", "korea", "age", 30));

//        model.addAttribute("member",
//                Map.of("country", "korea", "age", 15));
////
//        model.addAttribute("member",
//                Map.of("country","us","age",30));
//
//        model.addAttribute("member",
//                Map.of("country","us","age",15));
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
//        model.addAttribute("age", 3);
//        model.addAttribute("age", 15);
        model.addAttribute("age", 23);
//        model.addAttribute("age", 33);
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("dan", 5);
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("myList", List.of("java", "css", "react"));
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        MyBean121 e1 = new MyBean121("모하비", "kia", "한국", 3000);
        MyBean121 e2 = new MyBean121("모델X", "tesla", "미국", 4000);
        MyBean121 e3 = new MyBean121("XC90", "volvo", "스웨덴", 5000);
        MyBean121 e4 = new MyBean121("x5", "bmw", "독일", 7000);

        model.addAttribute("cars", List.of(e1, e2, e3, e4));
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        MyBean122 e1 = new MyBean122("손흥민", "토트넘", "한국", "축구", List.of("공격수"));
        MyBean122 e2 = new MyBean122("이상혁", "T1", "한국", "롤", List.of("미드라이너"));
        MyBean122 e3 = new MyBean122("오타니", "LA", "일본", "야구", List.of("투수", "지명타자"));
        MyBean122 e4 = new MyBean122("룰러", "징동", "한국", "롤", List.of("원거리 딜러"));
        MyBean122 e5 = new MyBean122("라스칼", "DRX", "한국", "롤", List.of("탑라이너"));

        model.addAttribute("playerList", List.of(e1, e2, e3, e4, e5));
    }
}
