package com.jdog.service.impl;

import java.util.List;

import com.jdog.dao.ProductDao;
import com.jdog.dao.impl.ProductDaoImpl;
import com.jdog.domain.Product;
import com.jdog.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	ProductDao pd = new ProductDaoImpl();

	@Override
	public List<Product> getAllProductByLimit(int start) {
		// TODO Auto-generated method stub
		if(start == -1)
			start = 0;
		return pd.getAllProductByLimit(start);
	}

	@Override
	public int getPageNum() {
		// TODO Auto-generated method stub
		int num = pd.getProductCount();
		return num/8+(num%8>0?1:0);
	}

	@Override
	public Product getProductById(String id) {
		// TODO Auto-generated method stub
		return pd.getProductById(id);
	}

}
