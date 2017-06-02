package com.mooc.service;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.mooc.model.User;
import com.mooc.model.UserExample;

public interface IUserService {

	public void addUser(User user);
	public void delUserById(User user);
	public void updateUser(User user);
	public User getUserById(int id);
	public List<User> getAllUsers();
	
	User getUserByEmail(String email);
	
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
