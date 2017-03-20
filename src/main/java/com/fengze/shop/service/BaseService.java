package com.fengze.shop.service;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * 通用接口
 */
public interface BaseService<T> {

    /**
     * 根据主键进行查询,必须保证结果唯一
     * 单个字段做主键时,可以直接写主键的值
     * 联合主键时,key可以是实体类,也可以是Map
     * @param key
     * @return
     */
    T selectByPrimaryKey(Object key);

    /**
     * 根据实体类不为null的字段进行查询,条件全部使用=号and条件
     * @param t
     * @return
     */
    List<T> select(T t);

    /**
     * 查询全部结果，select(null)方法能达到同样的效果
     * @return
     */
    List<T> selectAll();

    /**
     * 根据实体中的属性进行查询，只能有一个返回值，有多个结果是抛出异常，查询条件使用等号
     * @param t
     * @return
     */
    T selectOne(T t);

    /**
     * 根据实体类不为null的字段查询总数,条件全部使用=号and条件
     * @param t
     * @return
     */
    int selectCount(T t);

    /**
     * 插入一条数据
     * 支持Oracle序列,UUID,类似Mysql的INDENTITY自动增长(自动回写)
     * 优先使用传入的参数值,参数值空时,才会使用序列、UUID,自动增长
     * @param t
     * @return
     */
    int insert(T t);

    /**
     * 插入一条数据,只插入不为null的字段,不会影响有默认值的字段
     * 支持Oracle序列,UUID,类似Mysql的INDENTITY自动增长(自动回写)
     * 优先使用传入的参数值,参数值空时,才会使用序列、UUID,自动增长
     * @param t
     * @return
     */
    int insertSelective(T t);

    /**
     * 根据主键进行更新,这里最多只会更新一条数据
     * @param t
     * @return
     */
    int updateByPrimaryKey(T t);

    /**
     * 根据主键进行更新
     * 只会更新不是null的数据
     * @param t
     * @return
     */
    int updateByPrimaryKeySelective(T t);

    /**
     * 根据实体类中字段不为null的条件进行删除,条件全部使用=号and条件
     * @param t
     * @return
     */
    int delete(T t);

    /**
     * 过主键进行删除,这里最多只会删除一条数据
     * 单个字段做主键时,可以直接写主键的值
     * 联合主键时,key可以是实体类,也可以是Map
     * @param key
     * @return
     */
    int deleteByPrimaryKey(Object key);

    /**
     * 根据Example条件进行查询
     * 这个查询支持通过Example类指定查询列，通过selectProperties方法指定查询列
     * @param example
     * @return
     */
    List<T> selectByExample(Object example);

    /**
     * 根据Example条件进行查询总数
     * @param example
     * @return
     */
    int selectCountByExample(Object example);

    /**
     * 根据Example条件更新实体record包含的不是null的属性值
     * @param record
     * @param example
     * @return
     */
    int updateByExample(@Param("record") T record, @Param("example") Object example);

    /**
     * 根据Example条件更新实体record包含的不是null的属性值
     * @param record
     * @param example
     * @return
     */
    int updateByExampleSelective(@Param("record") T record, @Param("example") Object example);

    /**
     * 根据Example条件删除数据
     * @param example
     * @return
     */
    int deleteByExample(Object example);

    /**
     * 默认为内存分页，可以配合PageHelper实现物理分页
     * 根据实体属性和RowBounds进行分页查询
     * @param t
     * @param rowBounds
     * @return
     */
    List<T> selectByRowBounds(T t, RowBounds rowBounds);

    /**
     * 根据example条件和RowBounds进行分页查询
     * @param example
     * @param rowBounds
     * @return
     */
    List<T> selectByExampleAndRowBounds(Object example, RowBounds rowBounds);

    /**
     * 批量插入，支持批量插入的数据库可以使用，
     * 例如MySQL,H2等，另外该接口限制实体包含id属性并且必须为自增列
     * @param recordList
     * @return
     */
    int insertList(List<T> recordList);

    /**
     * 插入数据，限制为实体包含id属性并且必须为自增列，实体配置的主键策略无效
     * @param t
     * @return
     */
    int insertUseGeneratedKeys(T t);

    /**
     * 通过操作ids字符串进行操作，ids 如 "1,2,3" 这种形式的字符串，
     * 这个方法要求实体类中有且只有一个带有@Id注解的字段，否则会抛出异常。
     * 根据主键字符串进行查询，类中只有存在一个带有@Id注解的字段
     * @param ids
     * @return
     */
    List<T> selectByIds(String ids);

    /**
     * 根据主键字符串进行删除，类中只有存在一个带有@Id注解的字段
     * @param ids
     * @return
     */
    int deleteByIds(String ids);


}
