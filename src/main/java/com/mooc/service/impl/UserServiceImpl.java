package com.mooc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.dao.UserMapper;
import com.mooc.model.User;
import com.mooc.model.UserExample;
import com.mooc.model.UserExample.Criteria;
import com.mooc.service.IUserService;

import java.util.List;



@Service("userService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateByPrimaryKey(user);
	}


	public User getUserById(int id) {
		// TODO Auto-generated method stub
		
		return userMapper.selectByPrimaryKey(id);

	}

	public void delUserById(User user) {
		// TODO Auto-generated method stub
		userMapper.deleteByPrimaryKey(user.getId());
	}

	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		userMapper.selectByExample(example);
		return null;
	}
	
	public List<User> getUserByExample(UserExample example){
		return userMapper.selectByExample(example);
	}

	public int countByExample(UserExample example) {
		return userMapper.countByExample(example);
	}

	public int deleteByExample(UserExample example) {
		return userMapper.deleteByExample(example);
	}

	public int deleteByPrimaryKey(Integer id) {
		return userMapper.deleteByPrimaryKey(id);
	}

	public int insert(User record) {
		return userMapper.insert(record);
	}

	public int insertSelective(User record) {
		return userMapper.insertSelective(record);
	}

	public List<User> selectByExample(UserExample example) {
		// TODO Auto-generated method stub
		return userMapper.selectByExample(example);
	}

	public User selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(id);
	}

	public int updateByExampleSelective(User record, UserExample example) {
		// TODO Auto-generated method stub
		return userMapper.updateByExampleSelective(record, example);
	}

	public int updateByExample(User record, UserExample example) {
		// TODO Auto-generated method stub
		return userMapper.updateByExample(record, example);
	}

	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKey(record);
	}

	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		UserExample ux=new UserExample();
		Criteria cr=ux.createCriteria();
		cr.andEmailEqualTo(email);
		return userMapper.selectByExample(ux).get(0);
	}

}
