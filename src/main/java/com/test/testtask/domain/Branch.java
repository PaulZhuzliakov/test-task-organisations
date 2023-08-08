package com.test.testtask.domain;

import java.util.Objects;

/*
* Модель Филиала
* */
public class Branch {

    /*
    * Уникальный номер, генерируется БД
    * */
    public Long id;

    /*
    * Наименование филиала
    * */
    public String name;

    /**
     * Почтовый адрес
     * */
    public String mailingAddress;

    /**
     * Руководитель филиала
     * */
    public Person head;

    /**
     * pk на родительскую организацию
     * */
    public Long organisationId;

    public Branch(Long id, String name, String mailingAddress, Person head, Long organisationId) {
        this.id = id;
        this.name = name;
        this.mailingAddress = mailingAddress;
        this.head = head;
        this.organisationId = organisationId;
    }

}
