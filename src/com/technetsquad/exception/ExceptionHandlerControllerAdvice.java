package com.technetsquad.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandlerControllerAdvice {

    @ExceptionHandler(SchoolManagementSystemException.class)
    public ModelAndView handleException(SchoolManagementSystemException exception) {
        ModelAndView mav = new ModelAndView("error");
        mav.addObject("exceptionMsg", exception);
        return mav;
    }

}