package com.chengw.teacherInfoAnnualFillingSystem.services;

import com.chengw.teacherInfoAnnualFillingSystem.model.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface TeacherService {
    Teacher getTeacherByUsername(@Param("username") String username);
    List<Teacher> getAllTeacher();


}
