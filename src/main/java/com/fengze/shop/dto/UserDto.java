package com.fengze.shop.dto;

import lombok.Data;
import net.sf.oval.constraint.NotEmpty;
import net.sf.oval.constraint.NotNull;


@Data
public class UserDto {

    @NotNull @NotEmpty
    private String userName;
    @NotNull @NotEmpty
    private String passWord;
}
