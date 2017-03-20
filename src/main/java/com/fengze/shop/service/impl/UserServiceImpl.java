package com.fengze.shop.service.impl;

import com.fengze.shop.common.Response;
import com.fengze.shop.dto.UserDto;
import com.fengze.shop.model.UserDo;
import com.fengze.shop.service.UserService;
import com.fengze.shop.vo.UserVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class UserServiceImpl extends BaseServiceImpl<UserDo> implements UserService {

    @Override
    public Response<UserDto> loginUser(UserVo userVo) {
        UserDo userDo = new UserDo();
        UserDto userDto = new UserDto();
        try {
            PropertyUtils.copyProperties(userDo, userVo);
            UserDo user = selectOne(userDo);

            PropertyUtils.copyProperties(userDto, user);
            return user != null ? new Response<UserDto>(userDto) : new Response<UserDto>("1001", "用户名密码错误，请重试！");
        } catch (Exception e) {
            log.error("DTO转换失败");
            return new Response<UserDto>("1002", e.getMessage());
        }
    }
}
