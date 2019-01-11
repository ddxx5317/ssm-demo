package com.san.mappper;

import java.util.List;

import com.san.model.User;

/**   
* @author xsansan  
* @date 2018年8月8日 
* Description:  
*/
public interface UserMapper {
	User selectUserById(Integer userId);

    List<User> selectAllUser();
	
	void insert(User user);

}
