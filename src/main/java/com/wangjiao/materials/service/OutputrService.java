package com.wangjiao.materials.service;

import com.wangjiao.materials.entity.Outputr;
import com.wangjiao.materials.mapper.OutputrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/21 - 14:37
 */
@Service
public class OutputrService {
    @Autowired
    private OutputrMapper OutputrMapper;
    public List<Outputr> getOutputrList(){ return  OutputrMapper.queryOutputrList(); }
    public Outputr getOutputrById(int Mid){ return OutputrMapper.getOutputrById(Mid); }
    public List<Outputr> getOutputrByKeywords(String Keywords){return OutputrMapper.getOutputrByKeywords(Keywords);}
    public List<Outputr> getOutputrByDate(String[] date){return OutputrMapper.getOutputrByDate(date[0],date[1]);}
    public List<Outputr> getOutputrByDateAndKey(String[] date){return OutputrMapper.getOutputrByDateAndKey(date[0],date[1],date[2]);}
    public void updateOutputr(Outputr outputr){
        OutputrMapper.updateOutputr(outputr);
    }
    public void delOutputrById(int Ono){
        OutputrMapper.delOutputrById(Ono);
    }
    public void delOutputrByIds(int[] Onos){OutputrMapper.delOutputrByIds(Onos);}
    public void insertOutputr(Outputr outputr){
        OutputrMapper.insertOutputr(outputr);
    }
}
