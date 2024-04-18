package com.study.controller;

import com.study.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "name", required = false) String searchName, @ModelAttribute("employees") ArrayList<MyBean251> list) throws Exception {
        String sql = STR."""
                SELECT *
                FROM Employees
                WHERE LastName = '\{searchName}'
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            String id = rs.getString(1);
            String lastName = rs.getString(2);
            String firstName = rs.getString(3);
            String birthDate = rs.getString(4);
            String photo = rs.getString(5);
            String notes = rs.getString(6);

            MyBean251 obj = new MyBean251(id, lastName, firstName, birthDate, photo, notes);
            list.add(obj);
        }
    }

    @GetMapping("sub2")
    public void method2(@RequestParam(value = "name", required = false)
                        String search, Model model) throws Exception {
        var list = new ArrayList<MyBean252>();
        String sql = STR."""
                SELECT *
                FROM Products
                WHERE ProductName = '\{search}'
                """;

        ResultSet rs = dataSource.getConnection().createStatement().executeQuery(sql);

        while (rs.next()) {
            String id = rs.getString(1);
            String name = rs.getString(2);
            String unit = rs.getString(3);
            Integer price = rs.getInt(4);
            MyBean252 obj = new MyBean252(id, name, unit, price);
            list.add(obj);
        }

        model.addAttribute("products", list);
    }

    @GetMapping("sub3")
    public void method3(String search, Model model) throws Exception {
        var list = new ArrayList<MyBean252>();
        String sql = """
                SELECT *
                FROM Products
                WHERE ProductName = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        // 첫번째 파라미터 : 물음표 위치
        // 두번째 파라미터 : 넣을 값
        pstmt.setString(1, search);

        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            MyBean252 row = new MyBean252(rs.getString(1), rs.getString(2),
                    rs.getString(5), rs.getInt(6));

            list.add(row);
        }

        model.addAttribute("products", list);
    }

    @GetMapping("sub4")
    public String method4(Model model, String name) throws Exception {
        var list = new ArrayList<MyBean253Customer>();
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerName = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, name);

        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            while (rs.next()) {
                Integer id = rs.getInt(1);
                String customerName = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postal = rs.getString(6);
                String country = rs.getString(7);
                MyBean253Customer row = new MyBean253Customer(id, customerName, contactName, address,
                        city, postal, country);

                list.add(row);
            }
        }

        model.addAttribute("customers", list);
        return "main25/sub4CustomerList";
    }

    @GetMapping("sub5")
    public String method5(String name, Model model) throws Exception {
        var list = new ArrayList<MyBean253Customer>();
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerName LIKE ?
                """;
        String keyword = "%" + name + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();

        try (pstmt; rs; conn) {
            while (rs.next()) {
                Integer id = rs.getInt(1);
                String customerName = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postal = rs.getString(6);
                String country = rs.getString(7);
                MyBean253Customer row = new MyBean253Customer(id, customerName, contactName, address,
                        city, postal, country);

                list.add(row);
            }
        }

        model.addAttribute("customers", list);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub6")
    public void method6(Model model, String search) throws Exception {
        var list = new ArrayList<MyBean254Product>();
        String sql = """
                SELECT *
                FROM Products
                WHERE ProductName LIKE ?
                """;

        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();

        try (pstmt; rs; conn) {
            while (rs.next()) {
                String one = rs.getString(1);
                String two = rs.getString(2);
                String three = rs.getString(3);
                String four = rs.getString(4);
                String five = rs.getString(5);
                String six = rs.getString(6);

                MyBean254Product row = new MyBean254Product(one, two, three, four, five, six);
                list.add(row);
            }
        }

        model.addAttribute("products", list);
    }

    // 조회 문자열이 contactName 또는 customerName에 포함된 고객들 조회
    @GetMapping("sub7")
    public String method7(String name, Model model) throws SQLException {
        var list = new ArrayList<MyBean253Customer>();
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerName LIKE ?
                    OR ContactName LIKE ?
                """;

        String keyword = "%" + name + "%";
        PreparedStatement pstmt = dataSource.getConnection().prepareStatement(sql);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);
        ResultSet rs = pstmt.executeQuery();

        try (rs; pstmt) {
            while (rs.next()) {
                Integer id = rs.getInt(1);
                String customerName = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postal = rs.getString(6);
                String country = rs.getString(7);
                MyBean253Customer row = new MyBean253Customer(id, customerName, contactName, address,
                        city, postal, country);

                list.add(row);
            }
        }

        model.addAttribute("customers", list);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub8")
    public String method(String name, Model model) throws Exception {
        var list = new ArrayList<MyBean255Employee>();
        String sql = """
                SELECT *
                FROM Employees
                WHERE LastName LIKE ?
                OR FirstName LIKE ?
                """;
        String keyword = "%" + name + "%";

        PreparedStatement pstmt = dataSource.getConnection().prepareStatement(sql);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);

        ResultSet rs = pstmt.executeQuery();

        try (pstmt; rs) {
            while (rs.next()) {
                String id = rs.getString(1);
                String last = rs.getString(2);
                String first = rs.getString(3);
                String birth = rs.getString(4);
                String photo = rs.getString(5);
                String notes = rs.getString(6);
                MyBean255Employee row = new MyBean255Employee(id, last, first, birth, photo, notes);

                list.add(row);
            }
        }
        model.addAttribute("employees", list);
        return "sub8EmployeeList";
    }
}
