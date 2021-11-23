package com.wangjiao.materials.entity;

/**
 * @author wangjiao
 * @date 2021/11/23 - 13:45
 */
public class Repository {
    private Integer Rid;
    private String Rname;
    private String Remark;

    public Integer getRid() {
        return Rid;
    }

    public void setRid(Integer rid) {
        Rid = rid;
    }

    public String getRname() {
        return Rname;
    }

    public void setRname(String rname) {
        Rname = rname;
    }

    public String getRemark() {
        return Remark;
    }

    public void setRemark(String remark) {
        Remark = remark;
    }
}
