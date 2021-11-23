package com.wangjiao.materials.mapper;

import com.wangjiao.materials.entity.Outputr;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/22 - 14:35
 */
@Mapper
public interface OutputrMapper {
    public List<Outputr> queryOutputrList();
    public Outputr getOutputrById(int Ono);
    public List<Outputr> getOutputrByKeywords(@Param("Keywords")String Keywords);
    public List<Outputr> getOutputrByDate(@Param("start") String start,@Param("end") String end);
    public List<Outputr> getOutputrByDateAndKey(@Param("start") String start,@Param("end") String end,@Param("keyword") String keyword);
    public void updateOutputr(Outputr outputr);
    public void delOutputrById(int Ono);
    public void delOutputrByIds(@Param("Onos")int[] Onos);
    public void insertOutputr(Outputr outputr);
}
