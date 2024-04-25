package com.study.controller;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean255Employee;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {
    private final Mapper03 mapper;
    private final Mapper02 mapper02;

    @RequestMapping("sub1")
    public void method1() {
        int rowCount = mapper.deleteOneCustomer();
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    @RequestMapping("sub2")
    public void method2(Integer id) {
        int rowCount = mapper.deleteOneCustomerById(id);
        System.out.println(rowCount + "명 삭제됨");
    }

    @RequestMapping("sub3")
    public void method3(Integer eid) {
        int rowCount = mapper.deleteOneCustomerById2(eid);
        System.out.println(rowCount + "명 삭제됨");
    }

    // CustomerName=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    @GetMapping("sub4")
    public void method4(MyBean253Customer customer) {
        mapper.insertCustomer(customer);
    }

    @GetMapping("sub5")
    public void method5() {
    }

    @PostMapping("sub5")
    public String method5(MyBean255Employee employee, RedirectAttributes rttr) {
        int rowCount = mapper.insertEmployee(employee);
        System.out.println(rowCount + "명 추가");

        if (rowCount > 0) {
            rttr.addFlashAttribute("message", rowCount + "명 직원이 입력되었습니다");
        } else {
            rttr.addFlashAttribute("message", "등록되지 않았습니다");
        }
        return "redirect:/main32/sub5";
    }

    @GetMapping("sub6")
    public void method6(@RequestParam(value = "id", required = false) Integer eid, Model model) {
        if (eid != null) {
            MyBean255Employee e = mapper02.selectOneEmployee2(eid);
            model.addAttribute("employee", e);
        }
    }

    @PostMapping("sub6/update")
    public String method7(MyBean255Employee employee, RedirectAttributes rttr) {
        int i = mapper.updateEmployee(employee);

        if (i > 0) {
            rttr.addFlashAttribute("message", i + "명의 직원 수정");
        } else {
            rttr.addFlashAttribute("message", "등록 실패!");
        }

        rttr.addFlashAttribute("id", employee.getEmployeeID());

        return "redirect:/main32/sub6?id=" + employee.getEmployeeID();
    }

    @GetMapping("sub7")
    public void method8(Integer id, Model model) {
        if (id != null) {
            MyBean253Customer c = mapper.selectCustomerByID(id);

            model.addAttribute("customer", c);
        }
    }

    @PostMapping("sub7/update")
    public String method9(MyBean253Customer customer, RedirectAttributes rttr) {

        int i = mapper.updateCustomer(customer);
        if (i > 0) {
            rttr.addFlashAttribute("message", i + "명 고객 수정 완료 !");
        } else {
            rttr.addFlashAttribute("message", "수정 실패 !");
        }

        rttr.addAttribute("id", customer.getCustomerID());

        return "redirect:/main32/sub7";
    }
}
