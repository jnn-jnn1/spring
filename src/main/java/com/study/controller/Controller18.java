package com.study.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

@Controller
@RequestMapping("main18")
public class Controller18 {
    @RequestMapping("sub1")
    public void sub1(String product, Integer quantity, HttpSession session) {

        if (quantity == null) {
            return;
        }

        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<String, Integer>();
            session.setAttribute("cart", cart);
        }
        if (cart.containsKey(product)) {
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }
    }

    @RequestMapping("sub2")
    public void sub2(String product, Integer quantity, HttpSession session) {

        if (quantity == null) {
            return;
        }

        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<String, Integer>();
            session.setAttribute("cart", cart);
        }
        if (cart.containsKey(product)) {
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }
    }

    @RequestMapping("sub3")
    public void sub3(String product, Integer quantity, HttpSession session) {

        if (quantity == null) {
            return;
        }

        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<String, Integer>();
            session.setAttribute("cart", cart);
        }
        if (cart.containsKey(product)) {
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }
    }

    @RequestMapping("sub4")
    public void sub4() {
    }
}