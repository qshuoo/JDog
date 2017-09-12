package com.jdog.jdbcutil;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public final class JDBCConnPool {
	//private static JDBCConnPool instance;
	private static ComboPooledDataSource dataSource =  new ComboPooledDataSource("myc3p0xml");

	public JDBCConnPool() throws PropertyVetoException {
		dataSource = new ComboPooledDataSource("myc3p0xml");

		/*dataSource.setUser("root");
		dataSource.setPassword("root");
		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/jdog");
		dataSource.setDriverClass("com.mysql.jdbc.Driver");
		dataSource.setInitialPoolSize(5);
		dataSource.setMinPoolSize(1);
		dataSource.setMaxPoolSize(10);
		dataSource.setMaxStatements(50);
		dataSource.setMaxIdleTime(60);*/

	}

	/*public static final JDBCConnPool getInstance() {
		if (instance == null) {
			try {
				instance = new JDBCConnPool();
			} catch (PropertyVetoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return instance;
	}*/

	public synchronized static final Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn, Statement st, ResultSet rs) {
		try {
			if(rs!=null)
				rs.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if(st!=null)
				st.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if(conn!=null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
