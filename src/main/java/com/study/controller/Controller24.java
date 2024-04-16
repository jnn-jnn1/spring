package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean242;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main24")
public class Controller24 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Model model) throws Exception {
        var list = new ArrayList<MyBean241>();
        String sql = """
                SELECT FirstName, LastName
                FROM Employees
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (conn; stmt; rs) {
            while (rs.next()) {
                MyBean241 bean = new MyBean241();
                bean.setFirstName(rs.getString(1));
                bean.setLastName(rs.getString(2));
                list.add(bean);
            }
        }

        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
    public void method2(@ModelAttribute("customers") ArrayList<MyBean242> list) throws Exception {
        String sql = """
                SELECT CustomerName, City, Country
                FROM Customers
                """;

        Connection conn = dataSource.getConnection();
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        try (conn; statement; rs) {
            while (rs.next()) {
                MyBean242 bean = new MyBean242();
                bean.setCustomerName(rs.getString(1));
                bean.setCity(rs.getString(2));
                bean.setCountry(rs.getString(3));
                list.add(bean);
            }
        }
    }

    @GetMapping("sub3")
    public void method3(@ModelAttribute("country") ArrayList<String> list) throws Exception {
        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;

        Connection conn = dataSource.getConnection();
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        try (conn; statement; rs) {
            while (rs.next()) {
                String a = rs.getString(1);
                list.add(a);
            }
        }
    }
}
