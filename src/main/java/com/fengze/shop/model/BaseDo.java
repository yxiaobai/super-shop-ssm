package com.fengze.shop.model;

import lombok.Data;

import javax.persistence.Transient;
import java.io.Serializable;

/**
 * 类注释
 *
 * @author zhanglingsi
 *         createTime: 2017/1/4 11:36
 */
@Data
public class BaseDo implements Serializable {
    private static final long serialVersionUID = 1L;

    @Transient
    private Long redisKeyId;
}
