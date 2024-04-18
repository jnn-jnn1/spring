package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MyBean254Product {
    public MyBean254Product() {
    }

    private String productID;
    private String productName;
    private String supplierID;
    private String categoryID;
    private String unit;
    private String price;
}
