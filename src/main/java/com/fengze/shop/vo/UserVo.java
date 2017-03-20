package com.fengze.shop.vo;

import lombok.Data;
import net.sf.oval.constraint.NotEmpty;
import net.sf.oval.constraint.NotNull;

@Data
public class UserVo {

    @NotNull
    @NotEmpty
    private String userName;
    @NotNull
    @NotEmpty
    private String passWord;
}
