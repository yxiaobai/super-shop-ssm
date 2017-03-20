package com.fengze.shop.web;

import com.fengze.shop.common.Response;
import com.fengze.shop.model.ProductDo;
import com.fengze.shop.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping(value = "/prod")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping(value = "/list", produces = {MediaType.APPLICATION_JSON_VALUE})
    public Response<List<ProductDo>> menuListByJson() {
        return new Response<List<ProductDo>>(productService.queryProdLs());
    }

    @PostMapping(value = "/list", produces = {MediaType.APPLICATION_XML_VALUE})
    public Response<List<ProductDo>> menuListByXml() {
        return new Response<List<ProductDo>>(productService.queryProdLs());
    }
}
