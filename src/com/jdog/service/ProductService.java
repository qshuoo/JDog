package com.jdog.service;

import java.util.List;

import com.jdog.domain.Product;

public interface ProductService {
	
	public List<Product> getAllProductByLimit(int start);
	public int getPageNum();
	public Product getProductById(String id);

}
