package com.technetsquad.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
@PropertySource({ "classpath:resources/sql-master.properties", "classpath:resources/sms-generic.properties" })
public class PropertyFileConfigUtil {

    @Autowired
    private Environment env;

    public String getProperty(String propertyKey) {
        return env.getProperty(propertyKey);
    }

}