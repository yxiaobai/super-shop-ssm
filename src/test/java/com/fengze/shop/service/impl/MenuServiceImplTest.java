package com.fengze.shop.service.impl;

import com.fengze.shop.BaseTest;
import com.fengze.shop.model.MenuDo;
import com.fengze.shop.service.MenuService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

/**
 * Created by zhangls on 2016/12/24 0024.
 */
@Slf4j
public class MenuServiceImplTest extends BaseTest {

    @Autowired
    private MenuService menuService;

    @Test
    public void testQueryMenuAll() throws Exception {

        Map<Long, List<MenuDo>> map =  menuService.queryMenuAll();

        log.info("{}",map.isEmpty());

    }
}