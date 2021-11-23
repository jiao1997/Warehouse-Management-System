package com.wangjiao.materials.service;


import com.wangjiao.materials.entity.Repository;
import com.wangjiao.materials.mapper.RepositoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/21 - 16:40
 */
@Service
public class RepositoryService {
    @Autowired
    private RepositoryMapper repositoryMapper;
    public List<Repository> getRepositoryList(){ return  repositoryMapper.queryRepositoryList(); }
    public Repository getRepositoryById(int Rid){ return repositoryMapper.getRepositoryById(Rid); }
    public List<Repository> getRepositoryByKeywords(String Keywords){return repositoryMapper.getRepositoryByKeywords(Keywords);}
    public void updateRepository(Repository repository){
        repositoryMapper.updateRepository(repository);
    }
    public void delRepositoryById(int Rid){
        repositoryMapper.delRepositoryById(Rid);
    }
    public void delRepositoryByIds(int[] Rids){repositoryMapper.delRepositoryByIds(Rids);}
    public void insertRepository(Repository repository){
        repositoryMapper.insertRepository(repository);
    }
}
