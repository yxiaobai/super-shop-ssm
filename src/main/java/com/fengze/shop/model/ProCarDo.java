package com.fengze.shop.model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "tb_pro_car")
public class ProCarDo {
    /**
     * 购物车ID
     */
    @Id
    @Column(name = "CAR_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long carId;

    /**
     * 用户ID
     */
    @Column(name = "USER_ID")
    private Long userId;

    /**
     * 产品ID
     */
    @Column(name = "PRO_ID")
    private Long proId;

    /**
     * 产品大小
     */
    @Column(name = "PRO_SIZE")
    private String proSize;

    /**
     * 产品颜色
     */
    @Column(name = "PRO_COLOR")
    private String proColor;

    /**
     * 产品数量
     */
    @Column(name = "PRO_NUM")
    private Long proNum;

    /**
     * 产品单价
     */
    @Column(name = "PRO_PRICE")
    private Double proPrice;

    /**
     * 产品总价
     */
    @Column(name = "TAL_PRICE")
    private Double talPrice;

    /**
     * 状态 1:可用状态  0:删除状态
     */
    @Column(name = "STATE")
    private Byte state;

    /**
     * 创建人ID
     */
    @Column(name = "CREATE_BY")
    private Long createBy;

    /**
     * 创建时间
     */
    @Column(name = "CREATE_DATE")
    private Date createDate;

    /**
     * 修改人ID
     */
    @Column(name = "UPDATE_BY")
    private Long updateBy;

    /**
     * 修改时间
     */
    @Column(name = "UPDATE_DATE")
    private Date updateDate;

    /**
     * 获取购物车ID
     *
     * @return CAR_ID - 购物车ID
     */
    public Long getCarId() {
        return carId;
    }

    /**
     * 设置购物车ID
     *
     * @param carId 购物车ID
     */
    public void setCarId(Long carId) {
        this.carId = carId;
    }

    /**
     * 获取用户ID
     *
     * @return USER_ID - 用户ID
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 设置用户ID
     *
     * @param userId 用户ID
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * 获取产品ID
     *
     * @return PRO_ID - 产品ID
     */
    public Long getProId() {
        return proId;
    }

    /**
     * 设置产品ID
     *
     * @param proId 产品ID
     */
    public void setProId(Long proId) {
        this.proId = proId;
    }

    /**
     * 获取产品大小
     *
     * @return PRO_SIZE - 产品大小
     */
    public String getProSize() {
        return proSize;
    }

    /**
     * 设置产品大小
     *
     * @param proSize 产品大小
     */
    public void setProSize(String proSize) {
        this.proSize = proSize;
    }

    /**
     * 获取产品颜色
     *
     * @return PRO_COLOR - 产品颜色
     */
    public String getProColor() {
        return proColor;
    }

    /**
     * 设置产品颜色
     *
     * @param proColor 产品颜色
     */
    public void setProColor(String proColor) {
        this.proColor = proColor;
    }

    /**
     * 获取产品数量
     *
     * @return PRO_NUM - 产品数量
     */
    public Long getProNum() {
        return proNum;
    }

    /**
     * 设置产品数量
     *
     * @param proNum 产品数量
     */
    public void setProNum(Long proNum) {
        this.proNum = proNum;
    }

    /**
     * 获取产品单价
     *
     * @return PRO_PRICE - 产品单价
     */
    public Double getProPrice() {
        return proPrice;
    }

    /**
     * 设置产品单价
     *
     * @param proPrice 产品单价
     */
    public void setProPrice(Double proPrice) {
        this.proPrice = proPrice;
    }

    /**
     * 获取产品总价
     *
     * @return TAL_PRICE - 产品总价
     */
    public Double getTalPrice() {
        return talPrice;
    }

    /**
     * 设置产品总价
     *
     * @param talPrice 产品总价
     */
    public void setTalPrice(Double talPrice) {
        this.talPrice = talPrice;
    }

    /**
     * 获取状态 1:可用状态  0:删除状态
     *
     * @return STATE - 状态 1:可用状态  0:删除状态
     */
    public Byte getState() {
        return state;
    }

    /**
     * 设置状态 1:可用状态  0:删除状态
     *
     * @param state 状态 1:可用状态  0:删除状态
     */
    public void setState(Byte state) {
        this.state = state;
    }

    /**
     * 获取创建人ID
     *
     * @return CREATE_BY - 创建人ID
     */
    public Long getCreateBy() {
        return createBy;
    }

    /**
     * 设置创建人ID
     *
     * @param createBy 创建人ID
     */
    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_DATE - 创建时间
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * 设置创建时间
     *
     * @param createDate 创建时间
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * 获取修改人ID
     *
     * @return UPDATE_BY - 修改人ID
     */
    public Long getUpdateBy() {
        return updateBy;
    }

    /**
     * 设置修改人ID
     *
     * @param updateBy 修改人ID
     */
    public void setUpdateBy(Long updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * 获取修改时间
     *
     * @return UPDATE_DATE - 修改时间
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * 设置修改时间
     *
     * @param updateDate 修改时间
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}