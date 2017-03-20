package com.fengze.shop.service.impl;

import com.alibaba.fastjson.JSON;
import com.fengze.shop.common.CacheUtils;
import com.fengze.shop.model.BaseDo;
import com.fengze.shop.service.BaseService;
import com.fengze.shop.util.MyMapper;
import lombok.Data;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;


@Data
@Service
public abstract class BaseServiceImpl<T extends BaseDo> implements BaseService<T> {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private CacheUtils cacheUtils;

    @Autowired(required = false)
    private MyMapper<T> mapper;

    private Class<T> entityClass;

    public BaseServiceImpl() {
        Type genType = getClass().getGenericSuperclass();
        Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
        entityClass = (Class) params[0];
    }

    @Override
    public T selectByPrimaryKey(Object key) {
        return mapper.selectByPrimaryKey(key);
    }

    @Override
    public List<T> select(T t) {
        String redisKey = "shop-menu-pid:" + t.getRedisKeyId();

        List<T> ls = JSON.parseArray(cacheUtils.get(redisKey), entityClass);

        if (ls != null && ls.size() > 0) {
            return ls;
        } else {
            ls = mapper.select(t);
            cacheUtils.put(redisKey, ls);
            return ls;
        }
    }

    @Override
    public List<T> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public T selectOne(T t) {
        return mapper.selectOne(t);
    }

    @Override
    public int selectCount(T t) {
        return mapper.selectCount(t);
    }

    @Override
    public int insert(T t) {
        return mapper.insert(t);
    }

    @Override
    public int insertSelective(T t) {
        return mapper.insertSelective(t);
    }

    @Override
    public int updateByPrimaryKey(T t) {
        return mapper.updateByPrimaryKey(t);
    }

    @Override
    public int updateByPrimaryKeySelective(T t) {
        return mapper.updateByPrimaryKeySelective(t);
    }

    @Override
    public int delete(T t) {
        return mapper.delete(t);
    }

    @Override
    public int deleteByPrimaryKey(Object key) {
        return mapper.deleteByPrimaryKey(key);
    }

    @Override
    public List<T> selectByExample(Object example) {
        return mapper.selectByExample(example);
    }

    @Override
    public int selectCountByExample(Object example) {
        return mapper.selectCountByExample(example);
    }

    @Override
    public int updateByExample(@Param("t") T t, @Param("example") Object example) {
        return mapper.updateByExample(t, example);
    }

    @Override
    public int updateByExampleSelective(@Param("t") T t, @Param("example") Object example) {
        return mapper.updateByExampleSelective(t, example);
    }

    @Override
    public int deleteByExample(Object example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public List<T> selectByRowBounds(T t, RowBounds rowBounds) {
        return mapper.selectByRowBounds(t, rowBounds);
    }

    @Override
    public List<T> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
        return mapper.selectByExampleAndRowBounds(example, rowBounds);
    }

    @Override
    public int insertList(List<T> recordList) {
        return mapper.insertList(recordList);
    }

    @Override
    public int insertUseGeneratedKeys(T t) {
        return mapper.insertUseGeneratedKeys(t);
    }

    @Override
    public List<T> selectByIds(String ids) {
        return mapper.selectByIds(ids);
    }

    @Override
    public int deleteByIds(String ids) {
        return mapper.deleteByIds(ids);
    }
}
