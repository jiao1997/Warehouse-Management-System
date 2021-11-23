package com.wangjiao.materials.mapper;

import com.wangjiao.materials.entity.Inputr;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/22 - 14:35
 */
@Mapper
public interface InputrMapper {
    public List<Inputr> queryInputrList();
    public Inputr getInputrById(int Ino);
    public List<Inputr> getInputrByKeywords(@Param("Keywords")String Keywords);
    public List<Inputr> getInputrByDate(@Param("start")String start,@Param("end")String end);
    public List<Inputr> getInputrByDateAndKey(@Param("start")String start, @Param("end")String end, @Param("keyword")String keyword);
    public void updateInputr(Inputr inputr);
    public void delInputrById(int Ino);
    public void delInputrByIds(@Param("Inos")int[] Inos);
    public void insertInputr(Inputr inputr);
}
