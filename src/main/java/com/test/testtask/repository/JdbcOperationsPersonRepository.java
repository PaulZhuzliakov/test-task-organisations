package com.test.testtask.repository;

import com.test.testtask.domain.Person;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class JdbcOperationsPersonRepository implements PersonRepository, RowMapper<Person> {
    @Override
    public Person findById(Long id) {
        String sql = "=?";
        return null;
    }

    @Override
    public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
