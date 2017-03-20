package com.fengze.shop.web;

import com.fengze.shop.common.Response;
import com.fengze.shop.common.VerifyUtil;
import com.fengze.shop.dto.UserDto;
import com.fengze.shop.service.UserService;
import com.fengze.shop.vo.UserVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping(value = "/login", produces = {MediaType.APPLICATION_JSON_VALUE})
    public Response<UserDto> valUser(UserVo userVo) {
        try{
            VerifyUtil.validateObject(userVo);
        }catch (RuntimeException e){
            return new Response<UserDto>("10020","用户名密码不能为空");
        }

        return userService.loginUser(userVo);
    }
}
