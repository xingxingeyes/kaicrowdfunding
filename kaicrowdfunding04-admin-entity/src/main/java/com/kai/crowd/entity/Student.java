package com.kai.crowd.entity;


import java.util.List;
import java.util.Map;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/3/11
 **/
public class Student {

    private Integer stuId;
    private String strName;
    private Address Address;
    private List<Subject> subjectList;
    private Map<String,String> map;

    public Student() {
    }

    public Student(Integer stuId, String strName, com.kai.crowd.entity.Address address, List<Subject> subjectList, Map<String, String> map) {
        this.stuId = stuId;
        this.strName = strName;
        Address = address;
        this.subjectList = subjectList;
        this.map = map;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStrName() {
        return strName;
    }

    public void setStrName(String strName) {
        this.strName = strName;
    }

    public com.kai.crowd.entity.Address getAddress() {
        return Address;
    }

    public void setAddress(com.kai.crowd.entity.Address address) {
        Address = address;
    }

    public List<Subject> getSubjectList() {
        return subjectList;
    }

    public void setSubjectList(List<Subject> subjectList) {
        this.subjectList = subjectList;
    }

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuId=" + stuId +
                ", strName='" + strName + '\'' +
                ", Address=" + Address +
                ", subjectList=" + subjectList +
                ", map=" + map +
                '}';
    }
}
