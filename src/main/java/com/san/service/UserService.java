package com.san.service;

import java.util.List;

import com.san.model.User;

/**   
* @author xsansan  
* @date 2018年8月8日 
* Description:  
*/
public interface UserService {
	User selectUserById(Integer userId);  
	
	void insert(User user);
	
    List<User> findAllUser();
}
