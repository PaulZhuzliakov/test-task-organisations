package com.test.testtask.repository;

import com.test.testtask.domain.Branch;
import com.test.testtask.domain.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@Repository
public class JdbcOperationsBranchRepository implements BranchRepository, RowMapper<Branch> {


    private final JdbcOperations jdbcOperations;

    @Autowired
    public JdbcOperationsBranchRepository(JdbcOperations jdbcOperations) {
        this.jdbcOperations = jdbcOperations;
    }

    @Override
    public List<Branch> findBranchesByOrganisationId(Long organisationId) {
        List<Branch> query = this.jdbcOperations.query(
                "select br.id b_id, br.name b_name, br.mailing_address b_mailing_address,\n" +
                        "       br_head.id br_head_id, br_head.last_name br_head_last_name, br_head.first_name\n" +
                        "       br_head_first_name, br_head.middle_name br_head_middle_name, br_head.birth_date br_head_birth_date\n" +
                        "       from branch br\n" +
                        "       left join persons br_head on br_head.id = br.head_id\n" +
                        "where br.organisation_id = ?",
                this, organisationId);
        return query;
    }

    @Override
    public Branch mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Branch(
                rs.getLong("b_id"),
                rs.getString("b_name"),
                rs.getString("b_mailing_address"),
                new Person(
                        rs.getLong("br_head_id"),
                        rs.getString("br_head_last_name"),
                        rs.getString("br_head_first_name"),
                        rs.getString("br_head_middle_name"),
                        LocalDate.parse(rs.getString("br_head_birth_date")
                        )
                ));
    }
}
