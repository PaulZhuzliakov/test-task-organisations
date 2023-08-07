package com.test.testtask.repository;

import com.test.testtask.domain.Branch;
import com.test.testtask.domain.Organisation;
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
public class JdbcOperationsOrganisationRepository implements OrganisationRepository, RowMapper<Organisation> {
    @Autowired
    private final JdbcOperations jdbcOperations;

    public JdbcOperationsOrganisationRepository(JdbcOperations jdbcOperations) {
        this.jdbcOperations = jdbcOperations;
    }

    @Override
    public List<Organisation> findAllOrganisations() {
        return this.jdbcOperations.query(
                "select o.id, o.full_name, o.short_name, o.inn, o.ogrn, o.mailing_address, o.legal_address,\n" +
                        "ceo.id ceo_id, ceo.last_name ceo_last_name, ceo.first_name ceo_first_name, " +
                        "ceo.middle_name ceo_middle_name, ceo.birth_date ceo_birth_date\n" +
                        "from organisations o\n" +
                        "left join persons ceo on o.ceo_id = ceo.id",
                this);
    }

    @Override
    public Organisation mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Organisation(rs.getLong("id"),
                rs.getString("full_name"),
                rs.getString("short_name"),
                rs.getLong("inn"),
                rs.getLong("ogrn"),
                rs.getString("mailing_address"),
                rs.getString("legal_address"),
                new Person(rs.getLong("ceo_id"),
                        rs.getString("ceo_last_name"),
                        rs.getString("ceo_first_name"),
                        rs.getString("ceo_middle_name"),
                        LocalDate.parse(rs.getString("ceo_birth_date"))
                        ));
    }
}
