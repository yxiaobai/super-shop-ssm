package com.fengze.shop.service;

import com.fengze.shop.common.Response;
import com.fengze.shop.dto.UserDto;
import com.fengze.shop.model.UserDo;
import com.fengze.shop.vo.UserVo;

public interface UserService extends BaseService<UserDo> {


    public Response<UserDto> loginUser(UserVo userVo);
}
