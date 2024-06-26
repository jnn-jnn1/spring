package com.study.controller;

import com.study.domain.MyBean201;
import com.study.domain.MyBean202;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.Arrays;

@Controller
@RequestMapping("main20")
public class Controller20 {
    @RequestMapping("sub1")
    public void sub1() {
    }

    @RequestMapping("sub2")
    public void sub2() {
    }

    @RequestMapping("sub3")
    public void sub3() {
    }

    @RequestMapping("sub4")
    public void sub4() {
    }

    @RequestMapping("sub5")
    public void sub5(String player, Model model) {
        model.addAttribute("result", player + "검색 결과");
    }

    @RequestMapping("sub6")
    public void sub6(String address, String type, Model model) {
        model.addAttribute("result", address + "의" + type + "검색 결과");
    }

    @RequestMapping("sub7")
    public void sub7(String name, Integer age, LocalDate birth, String address, String hobby, Model model) {
        model.addAttribute("result", name + "님의 나이는 " + age + "세");
        System.out.println("birth = " + birth);
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        System.out.println("address = " + address);
        System.out.println("hobby = " + hobby);
    }

    @RequestMapping("sub8")
    public void sub8(@ModelAttribute MyBean201 data) {
        // @ModelAttribute 생략 가능
        System.out.println(data);
    }

    @RequestMapping("sub9")
    public void sub9() {
    }

    @RequestMapping("sub10")
    public void sub10(MyBean202 data) {
        System.out.println(data);
    }

    @RequestMapping("sub11")
    public void sub11() {
    }

    @RequestMapping("sub12")
    public void sub12(String type, String content, String city) {
        System.out.println("city = " + city);
        System.out.println("content = " + content);
        System.out.println("type = " + type);
    }

    @RequestMapping("sub13")
    public void sub13(String city) {
        System.out.println("city = " + city);
    }

    @RequestMapping("sub14")
    public void sub14(String[] foods) {
        System.out.println(Arrays.toString(foods));
    }

    @RequestMapping("sub15")
    public void sub15(String type,
                      String phone,
                      String[] book) {
        System.out.println("type = " + type);
        System.out.println("phone = " + phone);
        System.out.println("book = " + Arrays.toString(book));
    }

    @RequestMapping("sub16")
    public void sub16() {
    }

    @RequestMapping("sub17")
    public void sub17(String id, String password, String describe) {
        System.out.println("id = " + id);
        System.out.println("password = " + password);
        System.out.println("describe = " + describe);
    }

    @RequestMapping("sub18")
    public void sub18(String name, String city, String address) {
        System.out.println("name = " + name);
        System.out.println("city = " + city);
        System.out.println("address = " + address);
    }
}


