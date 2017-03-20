package com.fengze.shop.model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "tb_pro_comment")
public class ProComDo {
    /**
     * 商品评论ID
     */
    @Id
    @Column(name = "COM_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long comId;

    /**
     * 商品ID
     */
    @Column(name = "PRO_ID")
    private Long proId;

    /**
     * 用户ID
     */
    @Column(name = "USER_ID")
    private Long userId;

    /**
     * 评论标题
     */
    @Column(name = "COM_TITLE")
    private String comTitle;

    /**
     * 评论内容
     */
    @Column(name = "COM_DESC")
    private String comDesc;

    /**
     * 评价分数
     */
    @Column(name = "PRO_SCORE")
    private Double proScore;

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
     * 获取商品评论ID
     *
     * @return COM_ID - 商品评论ID
     */
    public Long getComId() {
        return comId;
    }

    /**
     * 设置商品评论ID
     *
     * @param comId 商品评论ID
     */
    public void setComId(Long comId) {
        this.comId = comId;
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
     * 获取评论标题
     *
     * @return COM_TITLE - 评论标题
     */
    public String getComTitle() {
        return comTitle;
    }

    /**
     * 设置评论标题
     *
     * @param comTitle 评论标题
     */
    public void setComTitle(String comTitle) {
        this.comTitle = comTitle;
    }

    /**
     * 获取评论内容
     *
     * @return COM_DESC - 评论内容
     */
    public String getComDesc() {
        return comDesc;
    }

    /**
     * 设置评论内容
     *
     * @param comDesc 评论内容
     */
    public void setComDesc(String comDesc) {
        this.comDesc = comDesc;
    }

    /**
     * 获取评价分数
     *
     * @return PRO_SCORE - 评价分数
     */
    public Double getProScore() {
        return proScore;
    }

    /**
     * 设置评价分数
     *
     * @param proScore 评价分数
     */
    public void setProScore(Double proScore) {
        this.proScore = proScore;
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