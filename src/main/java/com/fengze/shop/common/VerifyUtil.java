package com.fengze.shop.common;

import lombok.extern.slf4j.Slf4j;
import net.sf.oval.ConstraintViolation;
import net.sf.oval.Validator;

import java.util.List;

@Slf4j
public class VerifyUtil {

    private static Validator validator = new Validator();

    public static void validateObject(Object object) {
        List<ConstraintViolation> list = validator.validate(object);
        if (null != list && !list.isEmpty()) {
            log.info("校验参数异常:{}", list.get(0).getMessage());
            throw new RuntimeException(list.get(0).getMessage());
        }
    }
}
