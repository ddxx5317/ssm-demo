package com.san.model;

import java.lang.reflect.Field;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.alibaba.fastjson.JSONObject;
import com.san.enums.SexEnum;
import com.san.utils.Signature;

/**   
* @author xsansan  
* @date 2018年8月8日 
* Description:  
*/
public class User {
	private Integer userId;  
    private String userName;  
    private String password;  
    
    private String phone;
    
    private JSONObject config;
    
    private Signature signature;  

    private SexEnum sex;
    
    public Integer getUserId() {  
        return userId;  
    }  
  
    public void setUserId(Integer userId) {  
        this.userId = userId;  
    }  
  
    public String getUserName() {  
        return userName;  
    }  
  
    public void setUserName(String userName) {  
        this.userName = userName;  
    }  
  

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public SexEnum getSex() {
		return sex;
	}

	public void setSex(SexEnum sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public JSONObject getConfig() {
		return config;
	}

	public void setConfig(JSONObject config) {
		this.config = config;
	}
	
	public Signature getSignature() {
		return signature;
	}

	public void setSignature(Signature signature) {
		this.signature = signature;
	}

	@Override
	public String toString() {
	 return (new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE) {
	        @Override
	        protected boolean accept(Field f) {
	            return super.accept(f) && !f.getName().equalsIgnoreCase("password"); //过滤掉特殊字段
	        }
	    }).toString();
	 }
}