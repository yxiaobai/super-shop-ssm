package com.fengze.shop.service.impl;

import com.alibaba.fastjson.JSON;
import com.fengze.shop.model.ProductDo;
import com.fengze.shop.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 类注释
 */
@Slf4j
@Service
public class ProductServiceImpl extends BaseServiceImpl<ProductDo> implements ProductService {

    @Override
    public List<ProductDo> queryProdLs() {
        List<ProductDo> ls = JSON.parseArray(super.getCacheUtils().get("prod:queryProdLs"), ProductDo.class);
        if (ls == null) {
            ls = selectAll();
            super.getCacheUtils().put("prod:queryProdLs", ls);
        }
        return ls;
    }
}
