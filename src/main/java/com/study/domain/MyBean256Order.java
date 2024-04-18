package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MyBean256Order {
    private String orderId;
    private String customerId;
    private String employeeId;
    private String orderDate;
    private String shipperId;
}
