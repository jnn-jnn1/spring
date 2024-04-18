package com.study.controller;

import com.study.domain.MyBean253Customer;
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
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(Integer page, Model model) throws Exception {
        Connection conn = dataSource.getConnection();
        int offset = 0;
        String totalPage = """
                SELECT COUNT(*)
                FROM Customers
                """;
        Statement s = conn.createStatement();
        ResultSet resultSet = s.executeQuery(totalPage);
        resultSet.next();
        Integer pageCount = resultSet.getInt(1);
        if (pageCount % 10 != 0) {
            pageCount /= 10;
            pageCount++;
        } else {
            pageCount /= 10;
        }
        model.addAttribute("pageCount", pageCount);

        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerID
                LIMIT ?, 10
                """;
        PreparedStatement pstmt = conn.prepareStatement(sql);
        if (page != null) {
            offset = (page - 1) * 10;
        } else {
            offset = 1;
        }
        pstmt.setInt(1, offset);
        ResultSet rs = pstmt.executeQuery();

        var list = new ArrayList<MyBean253Customer>();

        try (rs; conn; pstmt) {
            while (rs.next()) {
                MyBean253Customer customer = new MyBean253Customer();
                customer.setCustomerID(rs.getInt(1));
                customer.setCustomerName(rs.getString(2));
                customer.setContactName(rs.getString(3));
                customer.setAddress(rs.getString(4));
                customer.setCity(rs.getString(5));
                customer.setPostalCode(rs.getString(6));
                customer.setCountry(rs.getString(7));

                list.add(customer);
            }
        }

        model.addAttribute("customers", list);

        return "main25/sub4CustomerList";
    }
}
