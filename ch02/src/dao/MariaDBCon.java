package dao;

import java.sql.*;

public class MariaDBCon implements DBC{

    final String DRIVER = "org.mariadb.jdbc.Driver";
    final String DNS = "localhost";
    final String PORT = "3306";
    final String NAME = "edu";
    final String USER = "root";
    final String PASS = "1234";
    final String URL = "jdbc:mariadb://"+DNS+":"+PORT+"/"+NAME;

    Connection conn = null;

    @Override
    public Connection connect() {

        try {
            Class.forName(DRIVER);
            try {
                conn = DriverManager.getConnection(URL, USER, PASS);
            } catch (SQLException e) {
                System.out.println("DB 접속 실패");
                throw new RuntimeException(e);
            }
            if(conn != null) {
                System.out.println("DB 연결 성공");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("드라이버 로딩 실패");
            throw new RuntimeException(e);
        }

        return conn;
    }

    @Override
    public void close(PreparedStatement pstmt, Connection conn) {
        if(pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if(conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("DB 접속 종료");
    }

    @Override
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        if(rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if(pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if(conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        System.out.println("DB 접속 종료");
    }

}
