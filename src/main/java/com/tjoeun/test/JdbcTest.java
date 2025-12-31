package com.tjoeun.test;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcTest {
    public static void main(String[] args) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:XE",
                    "hayoung",
                    "0608"
            );

            System.out.println("DB 연결 성공");
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
