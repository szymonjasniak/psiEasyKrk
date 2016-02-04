package com.easykrk.infrastructure.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.dto.AutorKartyDTO;
import com.easykrk.infrastructure.repository.AutorKartyRepository;

@RestController
@RequestMapping(value = "/autorKarty", produces = MediaType.APPLICATION_JSON_VALUE)
public class AutorKartyController {

	private static Logger LOG = LoggerFactory
			.getLogger(AutorKartyController.class);

	@Autowired
	private AutorKartyRepository autorKartyRepository;

	@Autowired
	private Converter converter;

	@RequestMapping(value = "/getAll", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public List<AutorKartyDTO> getAll() throws Exception {
		return converter.convertListAutorToDto(
				autorKartyRepository.findAll());
	}

}
