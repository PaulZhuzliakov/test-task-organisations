package com.test.testtask.domain;

import java.util.List;

/**
 * Модель Организации
 * */
public class Organisation {

    /**
     * уникальный номер, генерируется БД
     */
    public Long id;

    /**
     * Полное наименование организации
     */
    public String fullName;

    /**
     * Краткое наименования организации
     */
    public String shortName;

    /**
     * ИНН
     */
    public Long inn;

    /**
     * ОГРН
     * */
    public Long ogrn;

    /**
     * Почтовый адрес
     * */
    public String mailingAddress;

    /**
     * Юридический адрес
     * */
    public String legalAddress;

    /**
     * Генеральный директор
     * */
    public Person ceo;

    /**
     * Список организаций
     * */
    public List<Branch> branches;

    public Organisation(Long id, String fullName, String shortName, Long inn, Long ogrn, String mailingAddress, String legalAddress, Person ceo) {
        this.id = id;
        this.fullName = fullName;
        this.shortName = shortName;
        this.inn = inn;
        this.ogrn = ogrn;
        this.mailingAddress = mailingAddress;
        this.legalAddress = legalAddress;
        this.ceo = ceo;
    }

    public Organisation(Long id, String fullName, String shortName, Long inn, Long ogrn, String mailingAddress, String legalAddress, Person ceo, List<Branch> branches) {
        this.id = id;
        this.fullName = fullName;
        this.shortName = shortName;
        this.inn = inn;
        this.ogrn = ogrn;
        this.mailingAddress = mailingAddress;
        this.legalAddress = legalAddress;
        this.ceo = ceo;
        this.branches = branches;
    }

    public void setBranches(List<Branch> branches) {
        this.branches = branches;
    }

    public Long getId() {
        return id;
    }
}
