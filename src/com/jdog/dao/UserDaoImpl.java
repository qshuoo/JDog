package com.jdog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import com.jdog.jdbcutil.JDBCConnPool;


public class UserDaoImpl implements UserDao {

	@Override
	public boolean login(String name,String pwd) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getInstance().getConnection();
		String sql = "select * from user where uname = ?";
		try {
			PreparedStatement pst =  conn.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet res = pst.executeQuery();
			while(res.next()) {
				if(pwd.equals(res.getString("upwd")))
					return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	@Test
	public void test() {
		Connection conn = JDBCConnPool.getInstance().getConnection();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from user";
			ResultSet res = st.executeQuery(sql);
			while(res.next()) {
				System.out.println(res.getString("uname"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
