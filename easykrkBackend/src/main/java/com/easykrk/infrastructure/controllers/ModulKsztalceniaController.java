package com.easykrk.infrastructure.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.dto.ModulKsztalceniaDTO;
import com.easykrk.infrastructure.common.utils.ModulKsztalceniaConverter;
import com.easykrk.infrastructure.repository.ModulKsztalceniaRepository;

@RestController
@RequestMapping(value = "/modul", produces = MediaType.APPLICATION_JSON_VALUE)
public class ModulKsztalceniaController {

	@Autowired
	ModulKsztalceniaRepository modulKsztalceniaRepositury;

	@Autowired
	ModulKsztalceniaConverter modulKsztalcenaiConverter;

	@RequestMapping(value = "/getAll/{programKsztalceniaId}", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public List<ModulKsztalceniaDTO> getAll(
			@PathVariable Long programKsztalceniaId)
					throws Exception {
		return modulKsztalcenaiConverter
				.convertList(modulKsztalceniaRepositury
						.findByProgramKsztalceniaIdAndCzyIstniejePodkategoriaIsFalse(
								programKsztalceniaId));
	}

}
