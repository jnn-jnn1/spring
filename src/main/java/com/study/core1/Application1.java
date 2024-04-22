package com.study.core1;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {
        System.out.println("main method");

        Controller1 c = new Controller1();
        Dao dao = new Dao();
        c.setDao(dao);
        c.action();
    }
}

class Dao {
    public void select() {
        System.out.println("select data");
    }
}

class Controller1 {
    // dependency
    private Dao dao;

    public void setDao(Dao dao) {
        this.dao = dao;
    }

    public void action() {
        dao.select();
    }
}