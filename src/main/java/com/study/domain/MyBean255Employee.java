package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean255Employee {
    private String employeeID;
    private String lastName;
    private String firstName;
    private String birthDate;
    private String photo;
    private String notes;
}
