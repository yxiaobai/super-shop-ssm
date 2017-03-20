package com.fengze.shop.model;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import lombok.Data;

import javax.persistence.*;

@Data
@XStreamAlias("menu")
@Table(name = "tb_pro_type")
public class MenuDo extends BaseDo {
    /**
     * 商品类型ID
     */
    @Id
    @Column(name = "TYPE_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @XStreamAsAttribute
    private Long typeId;

    /**
     * 商品类型名称
     */
    @Column(name = "TYPE_NAME")
    @XStreamAsAttribute
    private String typeName;

    /**
     * 商品类型父ID
     */
    @Column(name = "TYPE_P_ID")
    @XStreamAsAttribute
    private Long typePId;

    /**
     * 菜单URL
     */
    @Column(name = "MENU_URI")
    @XStreamAsAttribute
    private String menuUri;

    /**
     * 菜单样式 1: 平铺,2: 层级菜单, 3: 图片 ,4: 仅链接
     */
    @Column(name = "MENU_STYLE")
    @XStreamAsAttribute
    private Byte menuStyle;

    /**
     *  1:是菜单  0:不是菜单
     */
    @Column(name = "IS_MENU")
    @XStreamAsAttribute
    private Byte isMenu;

    /**
     * 状态 1:可用状态  0:删除状态
     */
    @Column(name = "STATE")
    @XStreamAsAttribute
    private Byte state;

    /**
     * 创建人ID
     */
    @Column(name = "CREATE_BY")
    @XStreamAsAttribute
    private Long createBy;

    /**
     * 创建时间
     */
    @Column(name = "CREATE_DATE")
    @XStreamAsAttribute
    private String createDate;

    /**
     * 修改人ID
     */
    @Column(name = "UPDATE_BY")
    @XStreamAsAttribute
    private Long updateBy;

    /**
     * 修改时间
     */
    @Column(name = "UPDATE_DATE")
    @XStreamAsAttribute
    private String updateDate;

}