package com.easykrk.infrastructure.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.domain.model.dto.KEKIn;
import com.easykrk.domain.model.dto.KEKOut;
import com.easykrk.infrastructure.controllers.exceptions.ResponseErrornousEntity;
import com.easykrk.infrastructure.repository.KEKRepository;
import com.easykrk.infrastructure.repository.KategoriaRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;
import com.easykrk.service.business.KEKService;
import com.easykrk.service.business.exceptions.IllegalKEKInputException;
import com.easykrk.service.business.exceptions.TooManyKEKGenerated;

@RestController
@RequestMapping(value = "/KEK", produces = MediaType.APPLICATION_JSON_VALUE)
public class KEKController {

	@Autowired
	KategoriaRepository kategoriaRepo;

	@Autowired
	ProgramKształceniaRepository programKsztalceniaRepository;

	@Autowired
	KEKRepository kekRepository;

	@Autowired
	KategoriaRepository kategoriaRepository;

	@Autowired
	KEKService KEKService;

	@RequestMapping(value = "/kategoria", method = RequestMethod.GET)
	@ResponseBody
	public Iterable<KategoriaEK> getAllKategoria() {
		return kategoriaRepo.findAll();
	}

	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public KEKOut saveKEK(@RequestBody KEKIn in) throws IllegalKEKInputException,TooManyKEKGenerated{
			throws IllegalKEKInputException {

		KEKOut out = KEKService.createKEK(in);
		return out;
	}

	@ExceptionHandler({IllegalKEKInputException.class,TooManyKEKGenerated.class})
	public ResponseErrornousEntity<KEKOut> rulesForIllegalKEKInput(
			HttpServletRequest req, Exception e) {

		KEKOut out = new KEKOut();
		out.setMessage(e.getMessage());
		return new ResponseErrornousEntity<KEKOut>(out,
				req.getRequestURI(),
				HttpStatus.PRECONDITION_FAILED);
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
