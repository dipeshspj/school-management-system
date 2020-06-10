package com.technetsquad.exception;

public class SchoolManagementSystemException extends RuntimeException {

    private static final long serialVersionUID = 5198258375397890075L;

    public SchoolManagementSystemException() {
        super();
    }

    public SchoolManagementSystemException(final String message) {
        super(message);
    }
}
