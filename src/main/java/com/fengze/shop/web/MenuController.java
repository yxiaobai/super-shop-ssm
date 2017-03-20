package com.fengze.shop.web;


import com.fengze.shop.model.MenuDo;
import com.fengze.shop.service.MenuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping(value = "/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @GetMapping(value = "/list", produces = {MediaType.APPLICATION_JSON_VALUE})
    public Map<Long, List<MenuDo>> menuListByJson() {
        return menuService.queryMenuAll();
    }

    @PostMapping(value = "/list", produces = {MediaType.APPLICATION_XML_VALUE})
    public Map<Long, List<MenuDo>> menuListByXml() {
        return menuService.queryMenuAll();
    }

}
