package com.jdog.dao;

import java.util.List;

import com.jdog.domain.Product;

public interface ProductDao {
	public List<Product> getAllProductByLimit(int start);
	public int getProductCount();
	public Product getProductById(String id);
	
//	public List<Product> getProductByLimit(int start, int limit);

}
