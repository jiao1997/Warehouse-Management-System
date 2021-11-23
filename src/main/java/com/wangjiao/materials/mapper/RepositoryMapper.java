package com.wangjiao.materials.mapper;

import com.wangjiao.materials.entity.Repository;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/22 - 16:37
 */
@Mapper
public interface RepositoryMapper {
    public List<Repository> queryRepositoryList();
    public Repository getRepositoryById(int Rid);
    public List<Repository> getRepositoryByKeywords(@Param("Keywords")String Keywords);
    public void updateRepository(Repository repository);
    public void delRepositoryById(int Rid);
    public void delRepositoryByIds(@Param("Rids")int[] Rids);
    public void insertRepository(Repository repository);
}
