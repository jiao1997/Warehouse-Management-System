package com.wangjiao.materials.service;

import com.wangjiao.materials.entity.Inputr;
import com.wangjiao.materials.mapper.InputrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/22 - 14:37
 */
@Service
public class InputrService {
    @Autowired
    private InputrMapper inputrMapper;
    public List<Inputr> getInputrList(){ return  inputrMapper.queryInputrList(); }
    public Inputr getInputrById(int Mid){ return inputrMapper.getInputrById(Mid); }
    public List<Inputr> getInputrByKeywords(String Keywords){return inputrMapper.getInputrByKeywords(Keywords);}
    public List<Inputr> getInputrByDate(String[] date){return inputrMapper.getInputrByDate(date[0],date[1]);}
    public List<Inputr> getInputrByDateAndKey(String[] date){return inputrMapper.getInputrByDateAndKey(date[0],date[1],date[2]);}
    public void updateInputr(Inputr inputr){
        inputrMapper.updateInputr(inputr);
    }
    public void delInputrById(int Ino){
        inputrMapper.delInputrById(Ino);
    }
    public void delInputrByIds(int[] Inos){inputrMapper.delInputrByIds(Inos);}
    public void insertInputr(Inputr inputr){
        inputrMapper.insertInputr(inputr);
    }
}
