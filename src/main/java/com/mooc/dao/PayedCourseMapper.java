package com.mooc.dao;

import com.mooc.model.PayedCourse;
import com.mooc.model.PayedCourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PayedCourseMapper {
    int countByExample(PayedCourseExample example);

    int deleteByExample(PayedCourseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PayedCourse record);

    int insertSelective(PayedCourse record);

    List<PayedCourse> selectByExample(PayedCourseExample example);

    PayedCourse selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PayedCourse record, @Param("example") PayedCourseExample example);

    int updateByExample(@Param("record") PayedCourse record, @Param("example") PayedCourseExample example);

    int updateByPrimaryKeySelective(PayedCourse record);

    int updateByPrimaryKey(PayedCourse record);
}