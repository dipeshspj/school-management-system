package com.technetsquad.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SchoolManagementSystemUtil {

    public static String getCurrentDateTime() {
        DateFormat d = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        return d.format(date);
    }

    public static void main(String[] args) {
        System.out.println(getCurrentDateTime());
    }
}
