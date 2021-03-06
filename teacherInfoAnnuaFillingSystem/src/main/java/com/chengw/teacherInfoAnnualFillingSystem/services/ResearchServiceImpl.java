package com.chengw.teacherInfoAnnualFillingSystem.services;

import com.chengw.teacherInfoAnnualFillingSystem.dao.ResearchDAO;

import com.chengw.teacherInfoAnnualFillingSystem.model.Research;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional(rollbackFor = Exception.class)
public class ResearchServiceImpl implements ResearchService {

    @Resource
    private ResearchDAO researchDAO;

    public List<Research> findByUserCode(String userCode) {

        return researchDAO.findByUserCode(userCode);
    }

    public List<Research> findByRid(int rid) {
        return researchDAO.findByRid(rid);
    }

    public List<Research> findByCondition(int rid, String rname) {
        return researchDAO.findByCondition(rid,rname);
    }

    public void updateResearch(Research research) {
        researchDAO.updateResearch(research);
    }

    public void deleteResearch(int rid) {
        researchDAO.deleteResearch(rid);
    }

    public void saveResearch(Research research) {
        researchDAO.saveResearch(research);
    }
}
