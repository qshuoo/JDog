package com.jdog.dao;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import com.jdog.domain.User;
import com.jdog.jdbcutil.JDBCConnPool;


public class UserDaoImpl implements UserDao {

	@Override
	public boolean login(String name,String pwd) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		PreparedStatement pst =  null;
		ResultSet res = null;
		String sql = "select * from user where uname = ?";
		try {
			pst =  conn.prepareStatement(sql);
			pst.setString(1, name);
			res = pst.executeQuery();
			while(res.next()) {
				if(pwd.equals(res.getString("upwd")))
					return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, pst, res);
		}
		return false;
	}

	@Override
	public boolean getUserByName(String name) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		Statement pst =  null;
		ResultSet res = null;
		String sql = "select * from user where uname = "+"\""+name+"\"";
		try {
			pst =  conn.createStatement();
			res = pst.executeQuery(sql);
			while(res.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, pst, res);
		}
		return false;
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		PreparedStatement pst = null;
		String sql = "insert into user (uname,upwd,rname,sex,phone,email) values(?,?,?,?,?,?)";
		try {
			pst =  conn.prepareStatement(sql);
			pst.setString(1, user.getUname());
			pst.setString(2, user.getPwd());
			pst.setString(3, user.getRname());
			pst.setString(4, user.getSex());
			pst.setString(5, user.getPhone());
			pst.setString(6, user.getEmail());
			return pst.executeUpdate() > 0;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, pst, null);
		}
		return false;
	}
	
	@Test
	public void test() {
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = JDBCConnPool.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery("select *  from user");
			while(rs.next()) {
				System.out.println(rs.getString("uname"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, st, rs);
		}
		
	}

}
