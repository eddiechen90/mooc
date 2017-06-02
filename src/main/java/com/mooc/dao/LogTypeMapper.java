package com.mooc.dao;

import com.mooc.model.LogType;
import com.mooc.model.LogTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LogTypeMapper {
    int countByExample(LogTypeExample example);

    int deleteByExample(LogTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(LogType record);

    int insertSelective(LogType record);

    List<LogType> selectByExample(LogTypeExample example);

    LogType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LogType record, @Param("example") LogTypeExample example);

    int updateByExample(@Param("record") LogType record, @Param("example") LogTypeExample example);

    int updateByPrimaryKeySelective(LogType record);

    int updateByPrimaryKey(LogType record);
}