package com.fengze.shop.service;


import com.fengze.shop.model.MenuDo;

import java.util.List;
import java.util.Map;

public interface MenuService extends BaseService<MenuDo> {

    /**
     * 查询菜单
     * @return
     */
    public Map<Long, List<MenuDo>> queryMenuAll();
}
