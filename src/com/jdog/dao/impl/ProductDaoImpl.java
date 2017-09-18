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
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		Connection conn = JDBCConnPool.getConnection();
		List<Product> pList = new ArrayList<>();
		String sql = "select * from Product";
		try {
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
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
		
		return pList;
	}

}
