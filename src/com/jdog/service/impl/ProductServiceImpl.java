package com.jdog.service.impl;

import java.util.List;

import com.jdog.dao.ProductDao;
import com.jdog.dao.impl.ProductDaoImpl;
import com.jdog.domain.Product;
import com.jdog.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	ProductDao pd = new ProductDaoImpl();

	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		return pd.getAllProduct();
	}

}
