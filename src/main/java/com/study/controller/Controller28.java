package com.study.controller;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean255Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;

@Controller
@RequestMapping("main28")
public class Controller28 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void sub1() {
    }

    @PostMapping("sub1")
    public String sub2(MyBean253Customer customer, RedirectAttributes rttr) throws Exception {
        Connection conn = dataSource.getConnection();

        String sql = """
                INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
                VALUES (?,?,?,?,?,?)
                """;
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt) {
            pstmt.setString(1, customer.getCustomerName());
            pstmt.setString(2, customer.getContactName());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getCity());
            pstmt.setString(5, customer.getPostalCode());
            pstmt.setString(6, customer.getCountry());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "새 고객이 등록되었습니다");
            }
        }
        return "redirect:/main28/sub1";
    }

    @GetMapping("sub2")
    public void sub3() {

    }

    @PostMapping("sub2")
    public String sub4(MyBean255Employee employee, RedirectAttributes rttr) throws Exception {
        Connection conn = dataSource.getConnection();
        String sql = """
                INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
                VALUES (?,?,?,?,?)
                """;

        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt) {
            pstmt.setString(1, employee.getLastName());
            pstmt.setString(2, employee.getFirstName());
            pstmt.setString(3, employee.getBirthDate());
            pstmt.setString(4, employee.getPhoto());
            pstmt.setString(5, employee.getNotes());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "사원 등록 성공!");
            }
        }

        return "redirect:/main28/sub2";
    }
}
