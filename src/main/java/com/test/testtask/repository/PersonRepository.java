package com.test.testtask.repository;

import com.test.testtask.domain.Person;

public interface PersonRepository {
    public Person findById(Long id);
}
