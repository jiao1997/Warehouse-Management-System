package com.wangjiao.materials.mapper;

import com.wangjiao.materials.entity.Person;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/21 - 16:38
 */
@Mapper
public interface PersonMapper {
    public List<Person> queryPersonList();
    public List<Person> getPersonByKeywords(@Param("Keywords")String Keywords);
    public List<Person>  getPersonByRidAndPtype(@Param("Ptype")String Ptype,@Param("Rid")int Rid);
    public Person getPersonById(int Pid);
    public void updatePerson(Person person);
    public void delPersonById(int Pid);
    public void delPersonByIds(@Param("Pids")int[] Pids);
    public void insertPerson(Person person);
}
