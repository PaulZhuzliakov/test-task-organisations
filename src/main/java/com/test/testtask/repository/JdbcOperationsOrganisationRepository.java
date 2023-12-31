package com.test.testtask.repository;

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
import java.util.Optional;

/**
 * Репозиторий для извлечения организаций из БД
 */
@Repository
public class JdbcOperationsOrganisationRepository implements OrganisationRepository, RowMapper<Organisation> {
    private final JdbcOperations jdbcOperations;

    /*
    * основной запрос для получения организации без поиска
    * */
    private String mainSql =
            "select o.id,\n" +
            "       o.full_name,\n" +
            "       o.short_name,\n" +
            "       o.inn,\n" +
            "       o.ogrn,\n" +
            "       o.mailing_address,\n" +
            "       o.legal_address,\n" +
            "       ceo.id          ceo_id,\n" +
            "       ceo.last_name   ceo_last_name,\n" +
            "       ceo.first_name  ceo_first_name,\n" +
            "       ceo.middle_name ceo_middle_name,\n" +
            "       ceo.birth_date  ceo_birth_date\n" +
            "from organisations o\n" +
            "         left join persons ceo on o.ceo_id = ceo.id\n";

    @Autowired
    public JdbcOperationsOrganisationRepository(JdbcOperations jdbcOperations) {
        this.jdbcOperations = jdbcOperations;
    }

    /*
     * получение всех организаций из бд
     * */
    @Override
    public List<Organisation> findAllOrganisations() {
        return this.jdbcOperations.query(mainSql, this);
    }

    /*
     * получение организаций по поисковому запросу из бд
     * */
    @Override
    public List<Organisation> findOrganisationsByParam(String s) {
        return this.jdbcOperations.query(mainSql +
                        "where o.full_name ilike CONCAT('%', ?, '%')\n" +
                        "   or o.short_name ilike CONCAT('%', ?, '%')\n" +
                        "   or o.inn::text ilike CONCAT('%', ?, '%')\n" +
                        "   or o.ogrn::text ilike CONCAT('%', ?, '%')\n" +
                        "   or o.mailing_address ilike CONCAT('%', ?, '%')\n" +
                        "   or o.legal_address ilike CONCAT('%', ?, '%')",
                new Object[]{s,s,s,s,s,s},
                       this);
    }

    /*
     * получение организации по id из бд
     * */
    @Override
    public Optional<Organisation> findOrganisation(Long id) {
        return this.jdbcOperations.query(mainSql +
                        "where o.id = ?      ",
                        new Object[]{id}, this)
                .stream().findFirst();
    }

    /*
    * маппер организации
    * */
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
