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

    public Branch(Long id, String name, String mailingAddress, Person head) {
        this.id = id;
        this.name = name;
        this.mailingAddress = mailingAddress;
        this.head = head;
    }

    public Branch(Long id, String name, String mailingAddress, Person head, Long organisationId) {
        this.id = id;
        this.name = name;
        this.mailingAddress = mailingAddress;
        this.head = head;
        this.organisationId = organisationId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Branch)) return false;
        Branch branch = (Branch) o;
        return Objects.equals(id, branch.id) && Objects.equals(name, branch.name) && Objects.equals(mailingAddress, branch.mailingAddress) && Objects.equals(head, branch.head) && Objects.equals(organisationId, branch.organisationId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, mailingAddress, head, organisationId);
    }

    @Override
    public String toString() {
        return "Branch{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", mailingAddress='" + mailingAddress + '\'' +
                ", head=" + head +
                ", organisationId=" + organisationId +
                '}';
    }
}
