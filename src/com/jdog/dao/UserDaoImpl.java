package com.jdog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.jdog.domain.User;
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

	@Override
	public boolean getUserByName(String name) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getInstance().getConnection();
		String sql = "select * from user where uname = "+"\""+name+"\"";
		try {
			Statement pst =  conn.createStatement();
			ResultSet res = pst.executeQuery(sql);
			while(res.next()) {
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

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getInstance().getConnection();
		String sql = "insert into user (uname,upwd,rname,sex,phone,email) values(?,?,?,?,?,?)";
		try {
			PreparedStatement pst =  conn.prepareStatement(sql);
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
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

}
