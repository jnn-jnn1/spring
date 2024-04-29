package com.study.controller;

import com.study.mapper.Mapper05;
import com.study.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    private final Service01 service;
//    private final Mapper05 mapper;

    // 해당 월의 직원별 매출액 조회
    // /main34?sub1?year=1997&month=7
    @RequestMapping("sub1")
    public void method1(Integer year, Integer month, Model model) {


        model.addAttribute("incomeList", service.employeeIncomeList(year, month));
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }

    @RequestMapping("sub2")
    public void method2(Integer year, Integer month, Model model) {
        List<Mapper05.Customer> list = service.customersBuyList(year, month);

        model.addAttribute("priceList", list);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }
}
