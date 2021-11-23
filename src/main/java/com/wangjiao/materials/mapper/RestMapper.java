package com.wangjiao.materials.mapper;

import com.wangjiao.materials.entity.Rest;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/25 - 15:05
 */
@Mapper
public interface RestMapper {
    public List<Rest> queryRestList();
    public Rest getRestById(@Param("Mid")int Mid,@Param("Rid")int Rid);
    public List<Rest> getRestByKeywords(@Param("Keywords")String Keywords);
    public void updateRest(Rest rest);
    public void updateRestFinal(@Param("Mid") int Mid,@Param("Rid") int Rid,@Param("countcount") int countcount);
    public void updateRestSubtract(@Param("Mid")int Mid,@Param("Rid")int Rid,@Param("countcount")int countcount);
    public void delRestById(@Param("Mid")int Mid,@Param("Rid")int Rid);
    public void insertRest(Rest rest);
}
