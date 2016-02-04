package com.easykrk.infrastructure.common.exceptions;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class EasyKrkExceptionHandler {

    private static final Logger LOG = LoggerFactory.getLogger(EasyKrkExceptionHandler.class);

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public String handleConflict(Exception ex) {
	LOG.error("Error ", ex);
	return String.format(ex.getLocalizedMessage());
    }

}
