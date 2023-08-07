package com.test.testtask.domain;

import java.time.LocalDate;
import java.util.Objects;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Person)) return false;
        Person person = (Person) o;
        return Objects.equals(id, person.id) && Objects.equals(last_name, person.last_name) && Objects.equals(first_name, person.first_name) && Objects.equals(middle_name, person.middle_name) && Objects.equals(birthDate, person.birthDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, last_name, first_name, middle_name, birthDate);
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", last_name='" + last_name + '\'' +
                ", first_name='" + first_name + '\'' +
                ", middle_name='" + middle_name + '\'' +
                ", birthDate=" + birthDate +
                '}';
    }
}
