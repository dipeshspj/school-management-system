package com.technetsquad.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.technetsquad.dao.SchoolMasterDao;
import com.technetsquad.dto.School;

@Service("schoolMasterService")
public class SchoolMasterServiceImpl implements SchoolMasterService {

    @Autowired
    private SchoolMasterDao schoolMasterDao;

    public void saveSchoolMasterData(School school) {
        schoolMasterDao.saveSchoolMasterData(school);
    }

}
