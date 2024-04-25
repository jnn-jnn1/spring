package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("main33")
@RequiredArgsConstructor
public class Controller33 {
    private final Mapper04 mapper;

    @GetMapping("sub1")
    public void method1() {
        List<MyBean331> obj = mapper.select1();
        obj.forEach(System.out::println);
    }


    // int 사용할것인가? Integer 사용할 것인가?
    // Integer는 기본값 null, int 는 기본값 0 -> 적절 x
    @GetMapping("sub2")
    public void method2() {
        List<MyBean332> obj = mapper.select2();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3() {
        List<MyBean333> obj = mapper.select3();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void method4() {
        mapper.insert1("hello world", "30", "11.22", "1999-02-04", "1999-02-21 14:23:40");
    }

    @GetMapping("sub5")
    public void method5() {
        String strVal = "hello mybatis";
        Integer intVal = 7890;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("1998-01-08");
        LocalDateTime dateTimeVal = LocalDateTime.parse("1977-09-02T12:14:14");
        int i = mapper.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);
    }

    @GetMapping("sub6")
    public void method6() {
        String title = "HTML";
        String name = "JYP";
        Integer age = 40;
        Double price = 21.29;
        LocalDate published = LocalDate.parse("1992-02-10");
        LocalDateTime inserted = LocalDateTime.parse("1993-02-12T12:13:14");
        mapper.insert3(title, name, age, price, published, inserted);
    }

    @GetMapping("sub7")
    public void method7() {
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello 🤗");
        obj.setIntCol(7890);
        obj.setDateCol(LocalDate.parse("2020-08-07"));
        obj.setDateTimeCol(LocalDateTime.parse("2020-03-20T09:10:10"));
        obj.setDecCol(99.79);
        mapper.insert4(obj);
    }

    // 필드 프로퍼티 차이 ?
    @GetMapping("sub8")
    public void method8() {
        MyBean333 obj = new MyBean333();
        obj.setTitle("MegaSmile");
        obj.setName("SONY");
        obj.setAge(33);
        obj.setPrice(123.45);
        obj.setPublished(LocalDate.parse("1990-02-21"));
        obj.setInserted(LocalDateTime.parse("1992-12-23T14:27:18"));

        mapper.insert5(obj);
    }

    @GetMapping("sub9")
    public void select09(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public String insert9(MyBean332 bean) {
        mapper.insert4(bean);
        return "redirect:/main33/sub9";
    }

    @GetMapping("sub12")
    public void select12(Model model) {
        List<MyBean333> list = mapper.select3();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 data, RedirectAttributes rttr) {
        int i = mapper.insert5(data);
        if (i > 0) {
            rttr.addFlashAttribute("message", "등록 완료!");
        } else {
            rttr.addFlashAttribute("message", "등록 실패 !");
        }
        return "redirect:/main33/sub12";
    }
}
