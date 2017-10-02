package com.jdog.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jdog.dao.ProductDao;
import com.jdog.domain.Product;
import com.jdog.jdbcutil.JDBCConnPool;

public class ProductDaoImpl implements ProductDao {

	@Override
	public List<Product> getAllProductByLimit(int start) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		List<Product> pList = new ArrayList<>();
		String sql = "select * from Product limit "+start*8+",8";
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				Product product = new Product();
				product.setPid(rs.getInt("pid"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getDouble("price"));
				product.setPnum(rs.getInt("pnum"));
				product.setPimg(rs.getString("pimg"));
				product.setPdes(rs.getString("pdes"));
				pList.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			JDBCConnPool.close(conn, st, rs);
		}
		return pList;
	}

	@Override
	public int getProductCount() {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		String sql = "select count(*) from product";
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCConnPool.close(conn, st, rs);
		}
		
		return 0;
	}

	@Override
	public Product getProductById(String id) {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		String sql = "select * from product where pid="+id;
		Statement st = null;
		ResultSet rs = null;
		Product product = new Product();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				product.setPid(rs.getInt("pid"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getDouble("price"));
				product.setPnum(rs.getInt("pnum"));
				product.setPimg(rs.getString("pimg"));
				product.setPdes(rs.getString("pdes"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			JDBCConnPool.close(conn, st, rs);
		}
		return product;
	}

}
