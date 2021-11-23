package com.wangjiao.materials.service;

import com.wangjiao.materials.entity.Rest;
import com.wangjiao.materials.mapper.RestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/25 - 15:08
 */
@Service
public class RestService {
    @Autowired
    private RestMapper restMapper;
    public List<Rest> getRestList(){ return  restMapper.queryRestList(); }
    public Rest getRestById(int Mid,int Rid){ return restMapper.getRestById(Mid,Rid); }
    public List<Rest> getRestByKeywords(String Keywords){return restMapper.getRestByKeywords(Keywords);}
    public void updateRest(Rest rest){
        restMapper.updateRest(rest);
    }
    public void updateRestFinal(int Mid,int Rid,int count){
        restMapper.updateRestFinal(Mid,Rid,count);
    }
    public void updateRestSubtract(int Mid,int Rid,int count){restMapper.updateRestSubtract(Mid,Rid,count);}
    public void delRestById(int Mid,int Rid){
        restMapper.delRestById(Mid,Rid);
    }
    public void insertRest(Rest material){
        restMapper.insertRest(material);
    }
}
