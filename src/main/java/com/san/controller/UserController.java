package com.san.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.san.enums.SexEnum;
import com.san.model.User;
import com.san.service.UserService;

/**   
* @author xsansan  
* @date 2018年8月8日 
* Description:  
*/
@Controller
public class UserController {
	
    @Resource  
    private UserService userService;  
      
    @RequestMapping("/get")    
    public ModelAndView get(){   
        ModelAndView mav = new ModelAndView("index");   
        User user = userService.selectUserById(1000);  
        System.out.println(user.getUserName() + user.getPassword());
        mav.addObject("user", user);
    //	ModelAndView mav = new ModelAndView();
        mav.addObject("hello", user);
        mav.setViewName("index");
        return mav;    
    } 
    
    @RequestMapping("/list")    
    public ModelAndView list(){   
        ModelAndView mav = new ModelAndView("index");   
        PageHelper.startPage(1, 2); //开始起始页
        List<User> users = userService.findAllUser();  
        mav.addObject("hello", users);
        mav.setViewName("index");
        return mav;    
    } 
    
    @RequestMapping("/add")    
    public ModelAndView add(){   
        ModelAndView mav = new ModelAndView("index");   
        User user = new User();
        user.setUserName("username");
        user.setPassword("10001");
        user.setPhone("1380000001");
        user.setSex(SexEnum.FEMALE);
        JSONObject config = new JSONObject();
        config.put("A", "0000");
        user.setConfig(config);
        userService.insert(user);;  
        mav.addObject("user", user);
        mav.addObject("hello", user);
        mav.setViewName("index");
        return mav;    
    } 
}