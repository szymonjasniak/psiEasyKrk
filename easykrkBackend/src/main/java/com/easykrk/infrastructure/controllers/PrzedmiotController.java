package com.easykrk.infrastructure.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.FormaZaliczenia;
import com.easykrk.domain.model.Kurs;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.domain.model.dto.FormaProwadzeniaZajecDTO;
import com.easykrk.infrastructure.repository.FormaProwadzeniaZajecRepository;
import com.easykrk.infrastructure.repository.FormaZaliczeniaRepository;
import com.easykrk.infrastructure.repository.KursRepository;
import com.easykrk.infrastructure.repository.ModulKsztalceniaRepository;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;
import com.easykrk.service.business.PrzedmiotService;

@RestController
@RequestMapping(value = "/przedmiot", produces = MediaType.APPLICATION_JSON_VALUE)
public class PrzedmiotController {

	private static Logger LOG = LoggerFactory
			.getLogger(PrzedmiotController.class);

	@Autowired
	private PrzedmiotRepository przedmiotRepository;

	@Autowired
	private FormaProwadzeniaZajecRepository formaProwadzeniaZajecRepository;

	@Autowired
	private FormaZaliczeniaRepository formaZaliczeniaRepository;

	@Autowired
	private ModulKsztalceniaRepository modulKsztalceniaRepository;

	@Autowired
	private KursRepository kursRepository;

	@Autowired
	private PrzedmiotService przedmiotService;

	@Autowired
	private Converter converter;

	@RequestMapping(value = "/getAll/{programKsztalceniaId}", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public List<Przedmiot> getAll(
			@PathVariable Long programKsztalceniaId)
					throws Exception {
		return przedmiotRepository
				.findByModulKsztalceniaProgramKsztalceniaId(
						programKsztalceniaId);
	}

	@RequestMapping(value = "/getAll", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public Iterable<Przedmiot> getAll() throws Exception {
		return przedmiotRepository.findAll();
	}

	@RequestMapping(value = "/getFormyProwadzenia", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public List<FormaProwadzeniaZajecDTO> getFormyProwadzenia()
			throws Exception {
		return converter.convertListFormyProwadzeniaZajec(
				formaProwadzeniaZajecRepository.findAll());
	}

	@RequestMapping(value = "/getFormyZaliczenia", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public Iterable<FormaZaliczenia> getFormyZaliczenia()
			throws Exception {
		return formaZaliczeniaRepository.findAll();
	}

	@RequestMapping(value = "/save", method = RequestMethod.PUT)
	@ResponseBody
	@ExceptionHandler
	public void save(@RequestBody Przedmiot przedmiot)
			throws Exception {
		LOG.debug("Przedmiot with ID: "
				+ przedmiot.getKodPrzedmiotu() + " saved");
		przedmiotService.save(przedmiot);

	}

	@RequestMapping(value = "/getAllKursy/{programKsztalceniaId}", method = RequestMethod.GET)
	@ResponseBody
	@ExceptionHandler
	public List<Kurs> getAllKursy(
			@PathVariable Long programKsztalceniaId)
					throws Exception {
		return kursRepository.findAll();
	}

}
