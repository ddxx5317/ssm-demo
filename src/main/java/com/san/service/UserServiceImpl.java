package com.san.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.san.mappper.UserMapper;
import com.san.model.User;

/**   
* @author xsansan  
* @date 2018年8月8日 
* Description:  
*/
@Service
public class UserServiceImpl implements UserService {
	@Autowired  
    private UserMapper userMapper;  
  
    public User selectUserById(Integer userId) {  
        return userMapper.selectUserById(userId);  
          
    }

	@Override
	public void insert(User user) {
		userMapper.insert(user);		
	}

	@Override
	public List<User> findAllUser() {
		return userMapper.selectAllUser();
	}
}
