package com.test.testtask.domain;

import java.time.LocalDate;

/**
 * Модель человека
 * */
public class Person {

    /**
     * уникальный номер, генерируется БД
     */
    public Long id;

    /**
     * Фамилия
     * */
    public String last_name;

    /**
     * Имя
     * */
    public String first_name;

    /**
     * Отчество
     * */
    public String middle_name;

    /**
     * дата рождения
     * */
    public LocalDate birthDate;

    public Person(Long id, String last_name, String first_name, String middle_name, LocalDate birthDate) {
        this.id = id;
        this.last_name = last_name;
        this.first_name = first_name;
        this.middle_name = middle_name;
        this.birthDate = birthDate;
    }
}
