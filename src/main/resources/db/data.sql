# 用户表
INSERT INTO tb_user (user_name, pass_word, real_name, email, cell_phone, address, user_type)
VALUES ('admin', 'admin123', '系统管理员', 'admin@admin.com', '13612345678', '河南郑州', '1'),
       ('member', 'member123', '张三', 'member@member.com', '13612345679', '河南郑州', '1');

# 产品类型表
INSERT INTO tb_pro_type (type_name, type_p_id, menu_uri, menu_style, is_menu)
VALUES ('女士专区', 0, '/shop/product-list.jsp', '1', '1'),
       ('男士专区', 0, '/shop/product-list.jsp', '2', '1'),
       ('儿童专区', 0, '/shop/product-list.jsp', '2', '1'),
       ('新品发布', 0, '/shop/product-list.jsp', '3', '1'),
       ('电子产品', 0, '/shop/product-list.jsp', '2', '1'),
       ('二手市场', 0, '/shop/product-list.jsp', '4', '1'),
       ('管理后台', 0, '/shop/product-list.jsp', '4', '1');
INSERT INTO tb_pro_type (type_name, type_p_id, menu_uri, is_menu)
VALUES ('女士裙子', 1000, '/shop/product-list.jsp', '0'),
       ('连衣裙', 1007, '/shop/product-list.jsp', '0'),
       ('衬裙', 1007, '/shop/product-list.jsp', '0'),
       ('毛裙', 1007, '/shop/product-list.jsp', '0'),
       ('女鞋', 1000, '/shop/product-list.jsp', '0'),
       ('高跟鞋', 1011, '/shop/product-list.jsp', '0'),
       ('流行运动鞋', 1011, '/shop/product-list.jsp', '0'),
       ('板鞋', 1011, '/shop/product-list.jsp', '0'),
       ('珠宝/饰品', 1000, '/shop/product-list.jsp', '0'),
       ('项链', 1015, '/shop/product-list.jsp', '0'),
       ('手镯', 1015, '/shop/product-list.jsp', '0'),
       ('戒指', 1015, '/shop/product-list.jsp', '0'),
       ('耳环', 1015, '/shop/product-list.jsp', '0'),
       ('男鞋', 1001, '/shop/product-list.jsp', '0'),
       ('帆布鞋', 1020, '/shop/product-list.jsp', '0'),
       ('运动鞋', 1020, '/shop/product-list.jsp', '0'),
       ('商务皮鞋', 1020, '/shop/product-list.jsp', '0'),
       ('男裤', 1001, '/shop/product-list.jsp', '0'),
       ('休闲裤', 1024, '/shop/product-list.jsp', '0'),
       ('运动裤', 1024, '/shop/product-list.jsp', '0'),
       ('牛仔裤', 1024, '/shop/product-list.jsp', '0'),
       ('男装', 1001, '/shop/product-list.jsp', '0'),
       ('西服', 1028, '/shop/product-list.jsp', '0'),
       ('夹克', 1028, '/shop/product-list.jsp', '0'),
       ('衬衣', 1028, '/shop/product-list.jsp', '0'),
       ('男士化妆品', 1001, '/shop/product-list.jsp', '0');

/**
                      新品发布                      type_name 做为 商品ID
 */
INSERT INTO tb_pro_type (type_name, type_p_id, menu_uri, is_menu)
VALUES ('1001', 1003, '/shop/product-list.jsp', '0'),
       ('1002', 1003, '/shop/product-list.jsp', '0'),
       ('1003', 1003, '/shop/product-list.jsp', '0');

#商品图片表
INSERT INTO tb_pro_pic (pro_id, pic_uri, is_order)
VALUES ('1000', '/super-shop/shop/assets/temp/products/model4.jpg', '2'),
       ('1001', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1002', '/super-shop/shop/assets/temp/products/model7.jpg', '2'),
       ('1003', '/super-shop/shop/assets/temp/products/model4.jpg', '0'),
       ('1003', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1003', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1003', '/super-shop/shop/assets/temp/products/model1.jpg', '3'),
       ('1003', '/super-shop/shop/assets/temp/products/model5.jpg', '4'),
       ('1003', '/super-shop/shop/assets/temp/products/model6.jpg', '5'),
       ('1003', '/super-shop/shop/assets/temp/products/model7.jpg', '6'),
       ('1004', '/super-shop/shop/assets/temp/products/model5.jpg', '0'),
       ('1004', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1004', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1004', '/super-shop/shop/assets/temp/products/model4.jpg', '3'),
       ('1004', '/super-shop/shop/assets/temp/products/model1.jpg', '4'),
       ('1004', '/super-shop/shop/assets/temp/products/model6.jpg', '5'),
       ('1004', '/super-shop/shop/assets/temp/products/model7.jpg', '6'),
       ('1005', '/super-shop/shop/assets/temp/products/model6.jpg', '0'),
       ('1005', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1005', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1005', '/super-shop/shop/assets/temp/products/model4.jpg', '3'),
       ('1005', '/super-shop/shop/assets/temp/products/model5.jpg', '4'),
       ('1005', '/super-shop/shop/assets/temp/products/model1.jpg', '5'),
       ('1005', '/super-shop/shop/assets/temp/products/model7.jpg', '6'),
       ('1006', '/super-shop/shop/assets/temp/products/model7.jpg', '0'),
       ('1006', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1006', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1006', '/super-shop/shop/assets/temp/products/model4.jpg', '3'),
       ('1006', '/super-shop/shop/assets/temp/products/model5.jpg', '4'),
       ('1006', '/super-shop/shop/assets/temp/products/model6.jpg', '5'),
       ('1006', '/super-shop/shop/assets/temp/products/model1.jpg', '6'),
       ('1007', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1007', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1007', '/super-shop/shop/assets/temp/products/model4.jpg', '3'),
       ('1007', '/super-shop/shop/assets/temp/products/model5.jpg', '4'),
       ('1007', '/super-shop/shop/assets/temp/products/model6.jpg', '5'),
       ('1007', '/super-shop/shop/assets/temp/products/model7.jpg', '6'),
       ('1007', '/super-shop/shop/assets/temp/products/model1.jpg', '7'),
       ('1008', '/super-shop/shop/assets/temp/products/model2.jpg', '1'),
       ('1008', '/super-shop/shop/assets/temp/products/model3.jpg', '2'),
       ('1008', '/super-shop/shop/assets/temp/products/model4.jpg', '3'),
       ('1008', '/super-shop/shop/assets/temp/products/model5.jpg', '4'),
       ('1008', '/super-shop/shop/assets/temp/products/model6.jpg', '5'),
       ('1008', '/super-shop/shop/assets/temp/products/model7.jpg', '6'),
       ('1008', '/super-shop/shop/assets/temp/products/model1.jpg', '8');

#商品表
INSERT INTO tb_product (pro_name, pro_real_price, pro_now_price, is_stock, pro_desc, pro_size, pro_color, pro_score, pro_type_id, pro_pic_id, pro_pic_uri)
VALUES
       ('淑女成衣真丝裙子，活动促销中', '889.32', '499.21', '1', '活动促销中,活动促销中,活动促销中,活动促销中,活动促销中', 'L,M,XL,XXL,XXXL', 'red,green', '4.5',
        '9', '1', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女生高档眼镜，活动促销中', '89.45', '49.26', '1', '活动促销中,活动促销中,活动促销中,活动促销中,活动促销中', 'L,M,XL,XXL,XXXL', 'red,green', '4.5', '9',
        '2', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士鞋子特价，活动促销中', '239.20', '99.23', '1', '活动促销中,活动促销中,活动促销中,活动促销中,活动促销中', 'L,M,XL,XXL,XXXL', 'red,green', '4.5', '9',
        '3', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('男鞋001', '599.00', '399.00', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '23', '4', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士套装001', '542.33', '356.78', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '23', '13', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士套装002', '432.58', '316.93', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '10', '22', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士套装003', '237.88', '126.92', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '14', '31', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士套装004', '856.84', '562.73', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '11', '36', '/super-shop/shop/assets/temp/products/model1.jpg'),
       ('女士套装005', '336.93', '198.40', '1', '双十一促销', 'M,L,XL,XXL,XXL,XXXL', 'red,blue,white,black,yellow,green', '4.5',
        '13', '43', '/super-shop/shop/assets/temp/products/model1.jpg');

#商品明细表
INSERT INTO tb_pro_detail (pro_id, det_length, det_height, det_width, det_mate, det_Addr, det_date, det_desc)
VALUES (1000, '200', '300', '400', '真丝', '河南郑州', '2015-10-03 09:24:02', '淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子'),
       (1001, '300', '400', '500', '聚酯纤维', '河南郑州', '2014-10-18 10:35:07', '太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；'),
       (1002, '500', '600', '700', '牛皮', '河南郑州', '2015-04-22 22:45:01', '高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋'),
       (1003, '200', '300', '400', '真丝', '河南郑州', '2015-04-22 22:45:01', '淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子'),
       (1004, '300', '400', '500', '聚酯纤维', '河南郑州', '2015-04-22 22:45:01', '太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；'),
       (1005, '500', '600', '700', '牛皮', '河南郑州', '2015-04-22 22:45:01', '高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋'),
       (1006, '200', '300', '400', '真丝', '河南郑州', '2015-04-22 22:45:01', '淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子,淑女成衣真丝裙子'),
       (1007, '300', '400', '500', '聚酯纤维', '河南郑州', '2015-04-22 22:45:01', '太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；太阳镜，大促销；'),
       (1008, '500', '600', '700', '牛皮', '河南郑州', '2015-04-22 22:45:01', '高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋，高跟鞋');

#商品评论表
INSERT INTO tb_pro_comment (pro_id, user_id, com_title, com_desc, pro_score)
VALUES (1006, 1001, '产品评论001', '产品评论产品评论产品评论产品评论', 4.5),
       (1006, 1001, '产品评论002', '产品评论产品评论产品评论产品评论', 3.5);