package com.jdog.dao.impl;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import com.jdog.dao.UserDao;
import com.jdog.domain.User;
import com.jdog.jdbcutil.JDBCConnPool;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		PreparedStatement pst = null;
		String sql = "insert into user (uname,upwd,rname,sex,phone,email) values(?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUname());
			pst.setString(2, user.getUpwd());
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

	@Override
	public User getUserByUName(String name) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		
		Statement pst = null;
		ResultSet res = null;
		User user = new User();
		String sql = "select * from user where uname = " + "\"" + name + "\"";
		try {
			pst = conn.createStatement();
			res = pst.executeQuery(sql);
			while (res.next()) {
				user.setUid(res.getInt("uid"));
				user.setUname(name);
				user.setUpwd(res.getString("upwd"));
				user.setRname(res.getString("rname"));
				user.setPhone(res.getString("phone"));
				user.setEmail(res.getString("email"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*finally {
			JDBCConnPool.close(conn, pst, res);
		}*/
		return null;
	}

	@Override
	public User getUserByUId(int id) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		Statement pst = null;
		ResultSet res = null;
		User user = new User();
		String sql = "select * from user where uid = " + "\"" + id + "\"";
		try {
			pst = conn.createStatement();
			res = pst.executeQuery(sql);
			while (res.next()) {
				user.setUid(id);
				user.setUname(res.getString("uname"));
				user.setUpwd(res.getString("upwd"));
				user.setRname(res.getString("rname"));
				user.setPhone(res.getString("phone"));
				user.setEmail(res.getString("email"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, pst, res);
		}
		return null;
	}

}
