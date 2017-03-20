package com.fengze.shop.model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "tb_user")
public class UserDo extends BaseDo {
    /**
     * 用户ID
     */
    @Id
    @Column(name = "USER_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    /**
     * 登陆用户名
     */
    @Column(name = "USER_NAME")
    private String userName;

    /**
     * 登陆密码
     */
    @Column(name = "PASS_WORD")
    private String passWord;

    /**
     * 真实姓名
     */
    @Column(name = "REAL_NAME")
    private String realName;

    /**
     * 电子邮件
     */
    @Column(name = "EMAIL")
    private String email;

    /**
     * 手机号码
     */
    @Column(name = "CELL_PHONE")
    private String cellPhone;

    /**
     * 邮寄地址
     */
    @Column(name = "ADDRESS")
    private String address;

    /**
     * 用户类型 1:系统用户 0:注册会员用户
     */
    @Column(name = "USER_TYPE")
    private Byte userType;

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
     * 获取登陆用户名
     *
     * @return USER_NAME - 登陆用户名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置登陆用户名
     *
     * @param userName 登陆用户名
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取登陆密码
     *
     * @return PASS_WORD - 登陆密码
     */
    public String getPassWord() {
        return passWord;
    }

    /**
     * 设置登陆密码
     *
     * @param passWord 登陆密码
     */
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    /**
     * 获取真实姓名
     *
     * @return REAL_NAME - 真实姓名
     */
    public String getRealName() {
        return realName;
    }

    /**
     * 设置真实姓名
     *
     * @param realName 真实姓名
     */
    public void setRealName(String realName) {
        this.realName = realName;
    }

    /**
     * 获取电子邮件
     *
     * @return EMAIL - 电子邮件
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置电子邮件
     *
     * @param email 电子邮件
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取手机号码
     *
     * @return CELL_PHONE - 手机号码
     */
    public String getCellPhone() {
        return cellPhone;
    }

    /**
     * 设置手机号码
     *
     * @param cellPhone 手机号码
     */
    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    /**
     * 获取邮寄地址
     *
     * @return ADDRESS - 邮寄地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置邮寄地址
     *
     * @param address 邮寄地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取用户类型 1:系统用户 0:注册会员用户
     *
     * @return USER_TYPE - 用户类型 1:系统用户 0:注册会员用户
     */
    public Byte getUserType() {
        return userType;
    }

    /**
     * 设置用户类型 1:系统用户 0:注册会员用户
     *
     * @param userType 用户类型 1:系统用户 0:注册会员用户
     */
    public void setUserType(Byte userType) {
        this.userType = userType;
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