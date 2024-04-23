package com.study.mapper;

import com.study.domain.MyBean253Customer;
import com.study.domain.MyBean255Employee;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface Mapper03 {
    @Delete("""
            DELETE FROM Customers
            WHERE CustomerID = 1
            """)
    int deleteOneCustomer();

    @Delete("""
                DELETE FROM Customers
                WHERE CustomerID = #{id}
            """)
    int deleteOneCustomerById(Integer id);

    @Delete("""
                DELETE FROM Customers
                WHERE CustomerID = #{id}
            """)
    int deleteOneCustomerById2(Integer id);

    // #{프로퍼티명} 작성
    @Insert("""
                INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
                VALUES (#{customerName},#{contactName},#{address},#{city},#{postalCode},#{country})
            """)
    void insertCustomer(MyBean253Customer customer);

    @Insert("""
                INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
                VALUES (#{lastName}, #{firstName}, #{birthDate}, #{photo}, #{notes})
            """)
    int insertEmployee(MyBean255Employee employee);

    @Update("""
                UPDATE Employees
                SET
                    LastName = #{lastName},
                    FirstName = #{firstName},
                    BirthDate = #{birthDate},
                    Photo = #{photo},
                    Notes = #{notes}
                WHERE EmployeeID = #{employeeID}
            """)
    int updateEmployee(MyBean255Employee employee);
}
