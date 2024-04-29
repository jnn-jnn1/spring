package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }

    @Select("""
                SELECT e.EmployeeID,
                            e.LastName,
                            e.FirstName,
                            SUM(od.Quantity * p.Price) AS income
                            FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
                            JOIN OrderDetails od ON od.OrderID = o.OrderID
                            JOIN Products p ON p.ProductID = od.ProductID
                            WHERE o.OrderDate BETWEEN #{from} AND #{to}
                            GROUP BY e.EmployeeID
                            ORDER BY income DESC;
            """)
    List<EmployeeIncome> selectIncomeList(String from, String to);

    @Data
    static class Customer {
        private Integer CustomerID;
        private String customerName;
        private Double sumOfPrice;
    }

    @Select("""
                SELECT c.CustomerID, c.CustomerName, SUM(p.Price * od.Quantity) sumOfPrice
                FROM Customers c
                JOIN Orders o ON o.CustomerID = c.CustomerID
                JOIN OrderDetails od ON o.OrderID = od.OrderID
                JOIN Products p ON p.ProductID = od.ProductID
                WHERE o.OrderDate BETWEEN #{from} AND #{to}
                GROUP BY c.CustomerID
                ORDER BY sumOfPrice DESC
            """)
    List<Customer> customerBuy(String from, String to);
}
