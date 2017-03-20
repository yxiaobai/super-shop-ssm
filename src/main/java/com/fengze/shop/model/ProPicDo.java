package com.fengze.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_pro_pic")
public class ProPicDo {
    /**
     * 图片ID
     */
    @Id
    @Column(name = "PIC_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long picId;

    /**
     * 商品ID
     */
    @Column(name = "PRO_ID")
    private Long proId;

    /**
     * 图片URL
     */
    @Column(name = "PIC_URI")
    private String picUri;

    /**
     * 图片排序
     */
    @Column(name = "IS_ORDER")
    private Byte isOrder;

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
     * 获取图片ID
     *
     * @return PIC_ID - 图片ID
     */
    public Long getPicId() {
        return picId;
    }

    /**
     * 设置图片ID
     *
     * @param picId 图片ID
     */
    public void setPicId(Long picId) {
        this.picId = picId;
    }

    /**
     * 获取商品ID
     *
     * @return PRO_ID - 商品ID
     */
    public Long getProId() {
        return proId;
    }

    /**
     * 设置商品ID
     *
     * @param proId 商品ID
     */
    public void setProId(Long proId) {
        this.proId = proId;
    }

    /**
     * 获取图片URL
     *
     * @return PIC_URI - 图片URL
     */
    public String getPicUri() {
        return picUri;
    }

    /**
     * 设置图片URL
     *
     * @param picUri 图片URL
     */
    public void setPicUri(String picUri) {
        this.picUri = picUri;
    }

    /**
     * 获取图片排序
     *
     * @return IS_ORDER - 图片排序
     */
    public Byte getIsOrder() {
        return isOrder;
    }

    /**
     * 设置图片排序
     *
     * @param isOrder 图片排序
     */
    public void setIsOrder(Byte isOrder) {
        this.isOrder = isOrder;
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