package com.fengze.shop;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zhangls on 2016/12/19 0019.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/spring/spring.xml")
// 添加注释@Transactional 回滚对数据库操作
//@Transactional(propagation= Propagation.NOT_SUPPORTED)
@Transactional
public class BaseTest {
}
