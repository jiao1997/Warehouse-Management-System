package com.wangjiao.materials.service;

import com.wangjiao.materials.entity.Person;
import com.wangjiao.materials.mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/21 - 16:38
 */
@Service
public class PersonService {
    @Autowired
    private PersonMapper personMapper;
    public List<Person> getPersonList(){ return  personMapper.queryPersonList(); }
    public List<Person> getPersonByKeywords(String Keywords){return personMapper.getPersonByKeywords(Keywords);}
    public List<Person> getPersonByRidAndPtype(String Ptype,int Rid){ return  personMapper.getPersonByRidAndPtype(Ptype,Rid); }
    public Person getPersonById(int Pid){ return personMapper.getPersonById(Pid); }
    public void updatePerson(Person person){
        personMapper.updatePerson(person);
    }
    public void delPersonById(int Pid){
        personMapper.delPersonById(Pid);
    }
    public void delPersonByIds(int[] Pids){personMapper.delPersonByIds(Pids);}
    public void insertPerson(Person person){
        personMapper.insertPerson(person);
    }

}
