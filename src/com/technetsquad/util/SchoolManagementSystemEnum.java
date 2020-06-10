package com.technetsquad.util;

public enum SchoolManagementSystemEnum {

    ADMIN("ADMIN");

    private final String schoolManagementSystemEnum;

    SchoolManagementSystemEnum(String schoolManagementSystemEnum) {
        this.schoolManagementSystemEnum = schoolManagementSystemEnum;
    }

    public String getSchoolManagementSystemEnum() {
        return this.schoolManagementSystemEnum;
    }

}