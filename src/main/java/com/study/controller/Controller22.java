package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("main22")
public class Controller22 {
    @GetMapping("sub1")
    public String sub1() {
        // view forward
        return "/main22/sub1";
    }

    @GetMapping("sub2")
    public String sub2() {
        // redirect : 접두어 붙이면
        // redirection 응답 (302)
        // 브라우저는 302 응답을 받으면
        // Location 헤더에 있는 값으로
        // 다시 요청을 보냄
        return "redirect:/main22/sub1";
    }

    @GetMapping("sub3")
    public void sub3() {
        // login form 있는 jsp (view)로 forward
    }

    @PostMapping("sub4")
    public String method4(String id, String password, RedirectAttributes rttr) {
        // 로그인 성공 시
        // 성공 후 보여주는 페이지로 이동
        boolean ok = id.equals(password);

        if (ok) {
            rttr.addAttribute("type", "login");

            return "redirect:/main22/sub5";
        } else {
            // 로그인 실패 시
            // 로그인 form 있는 페이지로 이동

            rttr.addAttribute("type", "fail");
            return "redirect:/main22/sub3";
        }
    }

    @GetMapping("sub5")
    public void sub5() {
    }

    @GetMapping("sub6")
    public void method6() {
    }

    @PostMapping("sub7")
    public String method7(String id, String password, RedirectAttributes redirectAttributes) {
        boolean login = id.equals(password);


        if (login) {
            redirectAttributes.addAttribute("type", "ok");
            redirectAttributes.addAttribute("id", id);
            return "redirect:/main22/sub8";
        } else {
            redirectAttributes.addAttribute("type", "fail");
            return "redirect:/main22/sub6";
        }
    }

    @GetMapping("sub8")
    public void method8(RedirectAttributes rttr) {
    }

    @GetMapping("sub9")
    public String method9(RedirectAttributes rttr) {
        String condition = "";
        if (Math.random() < 0.5) {
            condition = "ok";
        } else {
            condition = "fail";
        }
        // redirection 시 정보전달은 RedirectionAttribute 활용
        rttr.addAttribute("condition", condition);
        rttr.addAttribute("type", "soccer");
        rttr.addAttribute("address", "신촌");
        rttr.addAttribute("city", "seoul");
        return "redirect:/main22/sub10";
    }


    @GetMapping("sub10")
    public void method10(String condition) {
        System.out.println("condition = " + condition);
    }

    @GetMapping("sub11")
    public String method11(RedirectAttributes rttr) {
        // redirection 시 정보 전달은 RedirectionAttributes 활용
        // addAttribute : 쿼리스트링에 붙음
        rttr.addAttribute("type", "soccer");

        // addFlashAttribute : 모델에 붙음
        rttr.addFlashAttribute("attr1", List.of("car", "fodd", "phone"));

        return "redirect:/main22/sub12";
    }

    @GetMapping("sub12")
    public void method12(@ModelAttribute("attr1") List<String> attr1) {
        System.out.println("attr1 = " + attr1);
    }

    @GetMapping("sub13")
    public void method13() {
    }

    @PostMapping("sub14")
    public String method14(RedirectAttributes rttr, String id, String password) {
        boolean ok = id.equals(password);
        if (ok) {
            // 로그인 성공 시
            rttr.addFlashAttribute("message", "로그인 성공");
            return "redirect:/main22/sub15";
        } else {
            rttr.addFlashAttribute("message", "로그인 실패");
            // 로그인 실패 시

            return "redirect:/main22/sub13";
        }

    }

    @GetMapping("sub15")
    public void method15() {
    }

    @GetMapping("sub16")
    public void method16() {
    }

    @PostMapping("sub17")
    public String method17(String id, String pw, RedirectAttributes rttr) {
        boolean ok = id.equals(pw);
        if (ok) {
            rttr.addFlashAttribute("message", "로그인 성공");
            rttr.addFlashAttribute("id", id);
            return "redirect:/main22/sub18";
        } else {
            rttr.addFlashAttribute("message", "아이디나 비밀번호가 다릅니다");
            return "redirect:/main22/sub16";
        }
    }

    @GetMapping("sub18")
    public void method18() {
    }
}
