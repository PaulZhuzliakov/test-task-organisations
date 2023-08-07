package com.test.testtask.domain;

import java.util.List;
import java.util.Objects;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Organisation)) return false;
        Organisation that = (Organisation) o;
        return Objects.equals(getId(), that.getId()) && Objects.equals(fullName, that.fullName) && Objects.equals(shortName, that.shortName) && Objects.equals(inn, that.inn) && Objects.equals(ogrn, that.ogrn) && Objects.equals(mailingAddress, that.mailingAddress) && Objects.equals(legalAddress, that.legalAddress) && Objects.equals(ceo, that.ceo) && Objects.equals(branches, that.branches);
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), fullName, shortName, inn, ogrn, mailingAddress, legalAddress, ceo, branches);
    }

    @Override
    public String toString() {
        return "Organisation{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", shortName='" + shortName + '\'' +
                ", inn=" + inn +
                ", ogrn=" + ogrn +
                ", mailingAddress='" + mailingAddress + '\'' +
                ", legalAddress='" + legalAddress + '\'' +
                ", ceo=" + ceo +
                ", branches=" + branches +
                '}';
    }
}
