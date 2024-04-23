package com.study.mapper;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean254Product;
import com.study.domain.MyBean255Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper02 {
    @Select("SELECT NOW()")
    public String selectNow();

    // 조회 결과 컬럶명과
    // 리턴 타입의 객체 프로퍼티명이 같으면
    // 값을 바인딩 해줌
    @Select("""
            SELECT *
            FROM Customers
            WHERE CustomerID = 1
            """)
    MyBean253Customer selectOneCustomer();

    @Select("""
            SELECT *
            FROM Customers
            WHERE CustomerID = 1
            """)
    MyBean253Customer selectOneCustomer2();

    @Select("""
            SELECT CustomerName CustomerName
            FROM Customers
            WHERE CustomerID = 1
            """)
    MyBean253Customer selectOneCustomer3();

    @Select("""
            SELECT *
            FROM Employees
            WHERE EmployeeID = 1
            """)
    MyBean255Employee SelectOneEmployee1();

    @Select("""
            SELECT EmployeeID,
                   LastName,
                   FirstName,
                   Photo,
                   Notes,
                   BirthDate
            FROM Employees
            WHERE EmployeeID = #{id}
            """)
    MyBean255Employee selectOneEmployee2(Integer id);

    @Select("""
                SELECT *
                FROM Customers
                WHERE CustomerID = #{id}
            """)
    MyBean253Customer selectOneCustomer4(Integer id);

    @Select("""
            SELECT *
            FROM Customers
            """)
    List<MyBean253Customer> selectAllCustomer1();

    @Select("""
                SELECT *
                FROM Employees
                ORDER BY BirthDate DESC
            """)
    List<MyBean255Employee> selectAllEmployees();

    @Select("""
                        SELECT *
                        FROM Customers
                        WHERE Country = #{country1}
                        OR Country = #{country2}
                        ORDER BY Country;
            """)
    List<MyBean253Customer> selectCustomerByCountry(String country1, String country2);

    @Select("""
                SELECT *
                FROM Products
                WHERE Price BETWEEN #{min} AND #{max}
                ORDER BY Price
            """)
    List<MyBean254Product> selectProductByPrice(Integer min, Integer max);
}
