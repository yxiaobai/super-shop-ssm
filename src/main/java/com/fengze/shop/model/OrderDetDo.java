package com.fengze.shop.model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "tb_order_detail")
public class OrderDetDo {
    /**
     * 订单明细ID
     */
    @Id
    @Column(name = "ODET_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long odetId;

    /**
     * 订单ID
     */
    @Column(name = "ORDER_ID")
    private String orderId;

    /**
     * 订单ID
     */
    @Column(name = "PRO_ID")
    private Long proId;

    /**
     * 商品名称
     */
    @Column(name = "PRO_NAME")
    private String proName;

    /**
     * 商品描述
     */
    @Column(name = "PRO_DESC")
    private String proDesc;

    /**
     * 商品大小
     */
    @Column(name = "PRO_SIZE")
    private String proSize;

    /**
     * 商品颜色
     */
    @Column(name = "PRO_COLOR")
    private String proColor;

    /**
     * 商品数量
     */
    @Column(name = "PRO_NUM")
    private Byte proNum;

    /**
     * 商品单价
     */
    @Column(name = "PRO_PRICE")
    private Double proPrice;

    /**
     * 订单总计
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
     * 获取订单明细ID
     *
     * @return ODET_ID - 订单明细ID
     */
    public Long getOdetId() {
        return odetId;
    }

    /**
     * 设置订单明细ID
     *
     * @param odetId 订单明细ID
     */
    public void setOdetId(Long odetId) {
        this.odetId = odetId;
    }

    /**
     * 获取订单ID
     *
     * @return ORDER_ID - 订单ID
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * 设置订单ID
     *
     * @param orderId 订单ID
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    /**
     * 获取订单ID
     *
     * @return PRO_ID - 订单ID
     */
    public Long getProId() {
        return proId;
    }

    /**
     * 设置订单ID
     *
     * @param proId 订单ID
     */
    public void setProId(Long proId) {
        this.proId = proId;
    }

    /**
     * 获取商品名称
     *
     * @return PRO_NAME - 商品名称
     */
    public String getProName() {
        return proName;
    }

    /**
     * 设置商品名称
     *
     * @param proName 商品名称
     */
    public void setProName(String proName) {
        this.proName = proName;
    }

    /**
     * 获取商品描述
     *
     * @return PRO_DESC - 商品描述
     */
    public String getProDesc() {
        return proDesc;
    }

    /**
     * 设置商品描述
     *
     * @param proDesc 商品描述
     */
    public void setProDesc(String proDesc) {
        this.proDesc = proDesc;
    }

    /**
     * 获取商品大小
     *
     * @return PRO_SIZE - 商品大小
     */
    public String getProSize() {
        return proSize;
    }

    /**
     * 设置商品大小
     *
     * @param proSize 商品大小
     */
    public void setProSize(String proSize) {
        this.proSize = proSize;
    }

    /**
     * 获取商品颜色
     *
     * @return PRO_COLOR - 商品颜色
     */
    public String getProColor() {
        return proColor;
    }

    /**
     * 设置商品颜色
     *
     * @param proColor 商品颜色
     */
    public void setProColor(String proColor) {
        this.proColor = proColor;
    }

    /**
     * 获取商品数量
     *
     * @return PRO_NUM - 商品数量
     */
    public Byte getProNum() {
        return proNum;
    }

    /**
     * 设置商品数量
     *
     * @param proNum 商品数量
     */
    public void setProNum(Byte proNum) {
        this.proNum = proNum;
    }

    /**
     * 获取商品单价
     *
     * @return PRO_PRICE - 商品单价
     */
    public Double getProPrice() {
        return proPrice;
    }

    /**
     * 设置商品单价
     *
     * @param proPrice 商品单价
     */
    public void setProPrice(Double proPrice) {
        this.proPrice = proPrice;
    }

    /**
     * 获取订单总计
     *
     * @return TAL_PRICE - 订单总计
     */
    public Double getTalPrice() {
        return talPrice;
    }

    /**
     * 设置订单总计
     *
     * @param talPrice 订单总计
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