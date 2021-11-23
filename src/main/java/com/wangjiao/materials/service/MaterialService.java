package com.wangjiao.materials.service;

import com.wangjiao.materials.mapper.MaterialMapper;
import com.wangjiao.materials.entity.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/20 - 15:07
 */
@Service
public class MaterialService {
    @Autowired
    private MaterialMapper materialMapper;
    public List<Material> getMaterialList(){ return  materialMapper.queryMaterialList(); }
    public Material getMaterialById(int Mid){ return materialMapper.getMaterialById(Mid); }
    public List<Material> getMaterialByKeywords(String Keywords){return materialMapper.getMaterialByKeywords(Keywords);}
    public void updateMaterial(Material material){
        materialMapper.updateMaterial(material);
    }
    public void delMaterialById(int Mid){
        materialMapper.delMaterialById(Mid);
    }
    public void delMaterialByIds(int[] Mids){materialMapper.delMaterialByIds(Mids);}
    public void insertMaterial(Material material){
        materialMapper.insertMaterial(material);
    }
}
