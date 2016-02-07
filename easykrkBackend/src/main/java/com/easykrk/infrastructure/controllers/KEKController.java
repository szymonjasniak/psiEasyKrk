package com.easykrk.infrastructure.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.infrastructure.repository.KategoriaRepository;
import com.easykrk.infrastructure.repository.KekRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;

@RestController
@RequestMapping(value = "/KEK", produces = MediaType.APPLICATION_JSON_VALUE)
public class KEKController {

	@Autowired
	KategoriaRepository kategoriaRepo;

	@Autowired
	ProgramKształceniaRepository programKsztalceniaRepository;

	@Autowired
	KekRepository kekRepository;

	@Autowired
	KategoriaRepository kategoriaRepository;

	@RequestMapping(value = "/kategoria", method = RequestMethod.GET)
	@ResponseBody
	public Iterable<KategoriaEK> getAllKategoria() {
		return kategoriaRepo.findAll();
	}

	@RequestMapping(value = "/getAll/{programKsztalceniaId}/{kategoriaId}")
	@ResponseBody
	@ExceptionHandler
	public Iterable<Kek> getKek(
			@PathVariable Long programKsztalceniaId,
			@PathVariable Long kategoriaId,
			@RequestParam(value = "opis", required = false, defaultValue = "") String opis)
					throws Exception {

		ProgramKsztalcenia pk = programKsztalceniaRepository
				.findOne(programKsztalceniaId);
		KategoriaEK kategoriaEk = kategoriaRepository
				.findOne(kategoriaId);

		return kekRepository
				.findDistinctByOpisContainingAndKategoriaAndProgramKsztalcenia(
						opis, kategoriaEk, pk);

	}

}
