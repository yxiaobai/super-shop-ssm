package com.fengze.shop.aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;


//@Slf4j
//@Aspect
//@Component
public class RedisCacheAspect {

    @Autowired
    private StringRedisTemplate redisTemplate;

}
