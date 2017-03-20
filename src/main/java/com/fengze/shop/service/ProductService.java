package com.fengze.shop.service;

import com.fengze.shop.model.ProductDo;

import java.util.List;

/**
 * 类注释
 *
 */
public interface ProductService extends BaseService<ProductDo> {

    public List<ProductDo> queryProdLs();
}
