package com.technetsquad.dao;

import static com.technetsquad.util.SchoolManagementSystemConstants.STATUS_ACTIVE;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.technetsquad.dto.School;
import com.technetsquad.dto.User;
import com.technetsquad.exception.SchoolManagementSystemException;
import com.technetsquad.util.PropertyFileConfigUtil;
import com.technetsquad.util.SchoolManagementSystemEnum;
import com.technetsquad.util.SchoolManagementSystemUtil;

@Repository("schoolMasterDao")
public class SchoolMasterDaoImpl implements SchoolMasterDao {

    private static final Logger logger = Logger.getLogger(SchoolMasterDaoImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private PropertyFileConfigUtil configUtil;

    @Value("${sms.school-master.error.insert-data}")
    private String schoolMasterInsertDataErrorMsg;

    public void saveSchoolMasterData(School school) {
        if (school == null || school.getUser() == null) {
            logger.error("School Details Or User Details is null");
            throw new SchoolManagementSystemException(schoolMasterInsertDataErrorMsg);
        }
        User userDetails = school.getUser();
        try {
            logger.debug("School Master Data:\n " + school);
            jdbcTemplate.update(
                    configUtil.getProperty("sms.school-master.insert-query"),
                    new Object[] { school.getSchoolName(), school.getRegistrationNo(), school.getSchoolLogo(),
                            school.getOwnerName(), school.getContactNo(), school.getEmailId(), school.getAddress(),
                            STATUS_ACTIVE, SchoolManagementSystemUtil.getCurrentDateTime() });

            jdbcTemplate.update(configUtil.getProperty("sms.user-master.insert-query"),
                    new Object[] { userDetails.getUserName(), userDetails.getEmailId(), userDetails.getContactNo(),
                            userDetails.getPassword(),
                            SchoolManagementSystemEnum.ADMIN.getSchoolManagementSystemEnum(), STATUS_ACTIVE,
                            SchoolManagementSystemUtil.getCurrentDateTime() });
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            throw new SchoolManagementSystemException(schoolMasterInsertDataErrorMsg);
        }
    }

}