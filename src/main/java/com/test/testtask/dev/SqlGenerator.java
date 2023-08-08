package com.test.testtask.dev;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*
* класс для генерации sql запроса, наполняющего бд тестовыми данными
* */
public class SqlGenerator {

    String generateSqlQuery() throws IOException {
        List<List<String>> organisations = new SqlGenerator().getRecords("csv/organisations.csv");
        List<List<String>> persons = new SqlGenerator().getRecords("csv/persons.csv");
        List<List<String>> branches = new SqlGenerator().getRecords("csv/branches.csv");

        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < 50; i++) {
            List<String> org = organisations.get(i);    //организации
            List<String> ceo = persons.get(i * 2 + 0);  //ген директора организаций
            List<String> head = persons.get(i * 2 + 1); //руководители филиалов
            List<String> br = branches.get(i);          //филиалы

            sb.append(String.format(
                    "\nWITH\n" +
                            "     organization_ceo AS (\n" +
                            "         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES (%s, %s, %s, %s)\n" +
                            "             RETURNING id),\n" +
                            "     organisations_ AS (\n" +
                            "         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)\n" +
                            "             VALUES (%s, %s, %d, %d, %s, %s, (select id from organization_ceo))\n" +
                            "             RETURNING id),\n" +
                            "     branch_head AS (\n" +
                            "         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES (%s, %s, %s, %s)\n" +
                            "             RETURNING id)\n" +
                            "         INSERT INTO branch (name, mailing_address, head_id, organisation_id)\n" +
                            "                VALUES (%s, %s, (select id from branch_head), (select id from organisations_));",
                    "'" + ceo.get(0) + "'", "'" + ceo.get(1) + "'", "'" + ceo.get(3) + "'", "'" + ceo.get(2) + "'", //ген директора организаций
                    "'" + org.get(0) + "'", "'" + org.get(1) + "'", Long.valueOf(org.get(2)), Long.valueOf(org.get(3)), "'" + org.get(4) + "'", "'" + org.get(5) + "'", //организации
                    "'" + head.get(0) + "'", "'" + head.get(1) + "'", "'" + head.get(3) + "'", "'" + head.get(2) + "'", //руководители филиалов
                    "'" + br.get(0) + "'", "'" + br.get(1) + "'"//филиалы
            ));
        }
        String path = getClass().getClassLoader().getResource("").getPath();

        try (PrintWriter out = new PrintWriter("generatedSqlQuery.txt")) {
            out.println(sb.toString());
        }

        return sb.toString();
    }

    public List<List<String>> getRecords(String fileName) throws IOException {
        final String COMMA_DELIMITER = ";";
        List<List<String>> records = new ArrayList<>();

        InputStream inputStream = getClass().getClassLoader().getResourceAsStream(fileName);
        try (InputStreamReader streamReader =
                     new InputStreamReader(inputStream, StandardCharsets.UTF_8);
             BufferedReader br = new BufferedReader(streamReader)) {
            String line;

            while ((line = br.readLine()) != null) {
                String[] values = line.split(COMMA_DELIMITER);
                records.add(Arrays.asList(values));
            }
        }
        return records;
    }

    public static void main(String[] args) throws IOException {
        String sqlQuery = new SqlGenerator().generateSqlQuery();
        System.out.println(sqlQuery);
    }
}