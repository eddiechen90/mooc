package com.mooc.dao;

import com.mooc.model.UserLog;
import com.mooc.model.UserLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserLogMapper {
    int countByExample(UserLogExample example);

    int deleteByExample(UserLogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserLog record);

    int insertSelective(UserLog record);

    List<UserLog> selectByExample(UserLogExample example);

    UserLog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserLog record, @Param("example") UserLogExample example);

    int updateByExample(@Param("record") UserLog record, @Param("example") UserLogExample example);

    int updateByPrimaryKeySelective(UserLog record);

    int updateByPrimaryKey(UserLog record);
}