package com.fengze.shop.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Table(name = "tb_product")
public class ProductDo extends BaseDo {
    /**
     * 商品ID
     */
    @Id
    @Column(name = "PRO_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long proId;

    /**
     * 商品名称
     */
    @Column(name = "PRO_NAME")
    private String proName;

    /**
     * 商品原价
     */
    @Column(name = "PRO_REAL_PRICE")
    private Double proRealPrice;

    /**
     * 商品现价
     */
    @Column(name = "PRO_NOW_PRICE")
    private Double proNowPrice;

    /**
     * 是否有库存 1：有库存 0：无库存
     */
    @Column(name = "IS_STOCK")
    private Byte isStock;

    /**
     * 商品简述
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
     * 评价分数
     */
    @Column(name = "PRO_SCORE")
    private Double proScore;

    /**
     * 商品类型ID
     */
    @Column(name = "PRO_TYPE_ID")
    private Long proTypeId;

    /**
     * 商品默认图片ID
     */
    @Column(name = "PRO_PIC_ID")
    private Long proPicId;

    /**
     * 商品默认图片URL
     */
    @Column(name = "PRO_PIC_URI")
    private String proPicUri;

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
    private String createDate;

    /**
     * 修改人ID
     */
    @Column(name = "UPDATE_BY")
    private Long updateBy;

    /**
     * 修改时间
     */
    @Column(name = "UPDATE_DATE")
    private String updateDate;

}