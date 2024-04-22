package com.study.mapper;

import com.study.domain.MyBean253Customer;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Component
public class Mapper01 {
    public MyBean253Customer getCustomerById(Integer id) throws Exception {
        // connection
        // preparedStatement
        // resultSet
        // 객체 만들고
        // 리턴

        if (id != null) {
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/w3schools", "root", "1234");
            String sql = """
                    SELECT *
                    FROM Customers
                    WHERE CustomerId = ?
                    """;
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                MyBean253Customer c = new MyBean253Customer();
                c.setCustomerID(rs.getInt(1));
                ;
                c.setCustomerName(rs.getString(2));
                ;
                c.setContactName(rs.getString(3));
                c.setAddress(rs.getString(4));
                c.setCity(rs.getString(5));
                c.setPostalCode(rs.getString(6));
                c.setCountry(rs.getString(7));

                return c;
            }
        }
        return null;
    }
}
