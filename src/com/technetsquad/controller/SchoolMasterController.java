package com.technetsquad.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.technetsquad.dto.School;
import com.technetsquad.exception.SchoolManagementSystemException;
import com.technetsquad.service.SchoolMasterService;

@Controller
@RequestMapping("/schoolmaster")
public class SchoolMasterController {

    private static final Logger logger = Logger.getLogger(SchoolMasterController.class);

    @Autowired
    private SchoolMasterService schoolMasterService;

    @Value("${sms.school-master.error.insert-data}")
    private String schoolMasterInsertDataErrorMsg;

    @Bean
    public MultipartResolver multipartResolver() {
        return new CommonsMultipartResolver();
    }

    @RequestMapping("/addschoolmasterform")
    public String addSchoolMasterForm(Model model) {
        logger.info("Displaying School Master Form");
        model.addAttribute("school", new School());
        return "/schoolmaster/addSchoolMasterForm";
    }

    @RequestMapping(value = "/saveschoolmaster", method = RequestMethod.POST)
    public String save(@ModelAttribute("school") School school, @RequestParam("imageFile") MultipartFile imageFile) {
        logger.info("Inserting School Master Data");
        try {
            school.setSchoolLogo(imageFile.getBytes());
            schoolMasterService.saveSchoolMasterData(school);
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            throw new SchoolManagementSystemException(schoolMasterInsertDataErrorMsg);
        }
        return "/schoolmaster/addSchoolMasterForm";
    }

}