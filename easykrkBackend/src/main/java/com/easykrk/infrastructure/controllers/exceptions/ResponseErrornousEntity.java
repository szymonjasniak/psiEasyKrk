package com.easykrk.infrastructure.controllers.exceptions;

import org.springframework.http.HttpStatus;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ResponseErrornousEntity<T> {

	T t;
	String uri;
	HttpStatus status;
	
}
