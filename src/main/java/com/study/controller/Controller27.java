package com.study.controller;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean255Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String sub1(@RequestParam(defaultValue = "1") Integer page,
                       Model model) throws Exception {
        Connection conn = dataSource.getConnection();
        if (page == null) page = 1;
        int offset = (page - 1) * 10;
        String totalPage = """
                SELECT COUNT(*)
                FROM Customers
                """;
        Statement s = conn.createStatement();
        ResultSet resultSet = s.executeQuery(totalPage);
        resultSet.next();
        int total = resultSet.getInt(1);
        int pageCount = (total - 1) / 10 + 1;

        int endPageNumber = (((page - 1) / 10) + 1) * 10;
        int beginPageNumber = endPageNumber - 9;

        endPageNumber = Math.min(endPageNumber, pageCount);
        model.addAttribute("endPageNumber", endPageNumber);
        model.addAttribute("beginPageNumber", beginPageNumber);

        // 이전 버튼 클릭 시 이동해야 하는 페이지 prevPageNumber 산출
        int prevPageNumber = beginPageNumber - 10;
        if (prevPageNumber >= 1) {
            model.addAttribute("prevPageNumber", prevPageNumber);
        }

        // 다음 버튼 클릭 시 이동해야 할 페이지 : nextPageNumber 산출
        int nextPageNumber = beginPageNumber + 10;
        if (nextPageNumber <= pageCount) {
            model.addAttribute("nextPageNumber", nextPageNumber);
        }

        // 현재 페이지 currentPage
        model.addAttribute("currentPage", page);

        model.addAttribute("pageCount", pageCount);

        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerID
                LIMIT ?, 10
                """;
        PreparedStatement pstmt = conn.prepareStatement(sql);
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

    @GetMapping("sub2")
    public String method2(@RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
        Connection conn = dataSource.getConnection();
        String countSql = """
                SELECT COUNT(*)
                FROM Employees
                """;
        Statement stmt = conn.createStatement();
        ResultSet countRs = stmt.executeQuery(countSql);
        countRs.next();
        int total = countRs.getInt(1);
        int lastPage = (total - 1) / 10 + 1;

        String sql = """
                SELECT *
                FROM Employees
                ORDER BY EmployeeID
                LIMIT ?, 10
                """;
        int offset = (page - 1) * 10;
        var list = new ArrayList<MyBean255Employee>();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, offset);
        ResultSet rs = pstmt.executeQuery();
        try (stmt; conn; rs; countRs; pstmt) {
            while (rs.next()) {
                MyBean255Employee row = new MyBean255Employee();
                row.setEmployeeID(rs.getString(1));
                row.setLastName(rs.getString(2));
                row.setFirstName(rs.getString(3));
                row.setBirthDate(rs.getString(4));
                row.setPhoto(rs.getString(5));
                row.setNotes(rs.getString(6));

                list.add(row);
            }
        }
        model.addAttribute("employees", list);

        int endPageNumber = (((page - 1) / 10) + 1) * 10;
        endPageNumber = Math.min(lastPage, endPageNumber);
        int beginPageNumber = endPageNumber - 9;

        model.addAttribute("currentPage", page);
        model.addAttribute("lastPage", lastPage);
        model.addAttribute("beginPageNumber", beginPageNumber);
        model.addAttribute("endPageNumber", endPageNumber);

        int nextPageNumber = beginPageNumber + 10;
        if (nextPageNumber <= lastPage) {
            model.addAttribute("nextPageNumber", nextPageNumber);
        }
        int prevPageNumber = beginPageNumber - 10;
        if (prevPageNumber >= 1) {
            model.addAttribute("prevPageNumber", prevPageNumber);
        }
        return "main25/sub8EmployeeList";
    }
}
