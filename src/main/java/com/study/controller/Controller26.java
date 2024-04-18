package com.study.controller;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean254Product;
import com.study.domain.MyBean256Order;
import com.study.domain.MyBean263Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(String start, String end, Model model) throws Exception {
        var list = new ArrayList<MyBean256Order>();
        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate BETWEEN ? AND ?;
                """;
        String startKey = start;
        String endKey = end;

        PreparedStatement pstmt = dataSource.getConnection().prepareStatement(sql);
        pstmt.setString(1, startKey);
        pstmt.setString(2, endKey);
        ResultSet rs = pstmt.executeQuery();

        try (pstmt; rs) {
            while (rs.next()) {
                String orderId = rs.getString(1);
                String customerId = rs.getString(2);
                String EmployeeId = rs.getString(3);
                String OrderDate = rs.getString(4);
                String shipperId = rs.getString(5);
                MyBean256Order row = new MyBean256Order(orderId, customerId, EmployeeId, OrderDate, shipperId);

                list.add(row);
            }
        }
        model.addAttribute("orderList", list);

        return "main26/sub1Orderlist";
    }

    @GetMapping("sub2")
    public String method2(String[] country, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (country != null && country.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < country.length; i++) {
                questionMarks += "?";
                if (i != country.length - 1) {
                    questionMarks += ",";
                }
            }
            String customerSql = STR."""
                    SELECT *
                    FROM Customers
                    WHERE Country IN (\{questionMarks})
                    """;
            var customerList = new ArrayList<MyBean253Customer>();
            PreparedStatement pstmt = conn.prepareStatement(customerSql);
            for (int i = 0; i < country.length; i++) {
                pstmt.setString((i + 1), country[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {
                while (resultSet.next()) {
                    Integer id = resultSet.getInt(1);
                    String customerName = resultSet.getString(2);
                    String contactName = resultSet.getString(3);
                    String address = resultSet.getString(4);
                    String city = resultSet.getString(5);
                    String postal = resultSet.getString(6);
                    String coun = resultSet.getString(7);
                    MyBean253Customer row = new MyBean253Customer(id, customerName, contactName, address
                            , city, postal, coun);
                    customerList.add(row);
                }
                model.addAttribute("customers", customerList);
            }
        }

        var countryList = new ArrayList<String>();
        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (rs; stmt; conn) {
            while (rs.next()) {
                countryList.add(rs.getString(1));
            }
        }

        model.addAttribute("countryList", countryList);
        return "/main25/sub4CustomerList";
    }

    @GetMapping("sub3")
    public String method3(String[] category, Model model) throws Exception {
        Connection conn = dataSource.getConnection();
        if (category != null && category.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < category.length; i++) {
                questionMarks += "?";
                if (i != category.length - 1) {
                    questionMarks += ",";
                }
            }
            String productSql = STR."""
                SELECT *
                FROM Products
                WHERE CategoryID IN (\{questionMarks})
                ORDER BY CategoryID, Price
                """;
            PreparedStatement pstmt = conn.prepareStatement(productSql);
            for (int i = 0; i < category.length; i++) {
                pstmt.setString((i + 1), category[i]);
            }
            ResultSet rs = pstmt.executeQuery();
            var productList = new ArrayList<MyBean254Product>();
            try (rs; pstmt) {
                while (rs.next()) {
                    MyBean254Product data = new MyBean254Product();
                    data.setProductID(rs.getString(1));
                    data.setProductName(rs.getString(2));
                    data.setSupplierID(rs.getString(3));
                    data.setCategoryID(rs.getString(4));
                    data.setUnit(rs.getString(5));
                    data.setPrice(rs.getString(6));
                    productList.add(data);
                }
                model.addAttribute("products", productList);
            }
        }

        String sql = """
                SELECT * FROM Categories
                """;

        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        var categoryList = new ArrayList<MyBean263Category>();
        try (resultSet; statement; conn) {
            while (resultSet.next()) {
                MyBean263Category data = new MyBean263Category();
                data.setId(resultSet.getInt(1));
                data.setName(resultSet.getString(2));
                categoryList.add(data);
            }
        }
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("prevCategorySelect", category);

        return "main25/sub6ProductList";
    }
}
