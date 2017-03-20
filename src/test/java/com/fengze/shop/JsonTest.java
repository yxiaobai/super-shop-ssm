package com.fengze.shop;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fengze.shop.model.MenuDo;

import java.util.List;

/**
 *
 */
public class JsonTest {


    public static void main(String[] args) {

        String jsonStr = "[{\"typeId\":1000,\"typeName\":\"女士专区\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":1,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1001,\"typeName\":\"男士专区\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":2,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1002,\"typeName\":\"儿童专区\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":2,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1003,\"typeName\":\"新品发布\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":3,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1004,\"typeName\":\"电子产品\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":2,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1005,\"typeName\":\"二手市场\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":4,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"},{\"typeId\":1006,\"typeName\":\"管理后台\",\"typePId\":0,\"menuUri\":\"/shop/product-list.jsp\",\"menuStyle\":4,\"isMenu\":1,\"state\":1,\"createBy\":1000,\"createDate\":\"Jan 4, 2017 9:34:53 AM\",\"updateBy\":1000,\"updateDate\":\"Jan 4, 2017 9:34:53 AM\"}]";

        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        JSON.toJSONString(jsonStr, SerializerFeature.WriteDateUseDateFormat);

        List<MenuDo> ls = JSONObject.parseArray(jsonStr,MenuDo.class);

        System.out.println(ls.size());

    }
}
