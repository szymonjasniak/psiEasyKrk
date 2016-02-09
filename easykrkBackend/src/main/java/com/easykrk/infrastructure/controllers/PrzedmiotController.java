package com.easykrk.infrastructure.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.FormaZaliczenia;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.domain.model.dto.FormaProwadzeniaZajecDTO;
import com.easykrk.domain.model.dto.PrzedmiotOut;
import com.easykrk.infrastructure.common.utils.Converter;
import com.easykrk.infrastructure.controllers.exceptions.ResponseErrornousEntity;
import com.easykrk.infrastructure.repository.FormaProwadzeniaZajecRepository;
import com.easykrk.infrastructure.repository.FormaZaliczeniaRepository;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;
import com.easykrk.service.business.PrzedmiotService;
import com.easykrk.service.business.exceptions.InvalidPrzedmiotPropertiesException;

@RestController
@RequestMapping(value = "/przedmiot", produces = MediaType.APPLICATION_JSON_VALUE)
public class PrzedmiotController {

    private static Logger LOG = LoggerFactory.getLogger(PrzedmiotController.class);

    @Autowired
    private PrzedmiotRepository przedmiotRepository;

    @Autowired
    private FormaProwadzeniaZajecRepository formaProwadzeniaZajecRepository;

    @Autowired
    private FormaZaliczeniaRepository formaZaliczeniaRepository;

    @Autowired
    private PrzedmiotService przedmiotService;

    @Autowired
    private Converter converter;

    @RequestMapping(value = "/getAllInProgram", method = RequestMethod.GET)
    @ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
    public List<Przedmiot> getAllInProgram(
	    @RequestParam(value = "program", required = true, defaultValue = "") Long program) throws Exception {
	return przedmiotRepository.findByModulKsztalceniaProgramKsztalceniaId(program);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
    public Iterable<Przedmiot> getAll() throws Exception {
	return przedmiotRepository.findAll();
    }

    @RequestMapping(value = "/getFormyProwadzenia", method = RequestMethod.GET)
    @ResponseBody
    @PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
    public List<FormaProwadzeniaZajecDTO> getFormyProwadzenia() throws Exception {
	return converter.convertListFormyProwadzeniaZajec(formaProwadzeniaZajecRepository.findAll());
    }

    @RequestMapping(value = "/getFormyZaliczenia", method = RequestMethod.GET)
    @ResponseBody
    public Iterable<FormaZaliczenia> getFormyZaliczenia() throws Exception {
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	return formaZaliczeniaRepository.findAll();
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    @PreAuthorize("hasAuthority('ROLE_DOMAIN_ADMIN')")
    public PrzedmiotOut save(@RequestBody Przedmiot przedmiot) throws Exception {
	LOG.debug("Przedmiot with ID: " + przedmiot.getKodPrzedmiotu() + " saved");
	PrzedmiotOut przedmiotOut = przedmiotService.save(przedmiot);
	return przedmiotOut;
    }

    @ExceptionHandler({ InvalidPrzedmiotPropertiesException.class })
    public ResponseErrornousEntity<PrzedmiotOut> rulesForInavlidPrzedmiotInput(HttpServletRequest req, Exception e) {
	PrzedmiotOut out = new PrzedmiotOut();
	out.setMessage(e.getMessage());
	return new ResponseErrornousEntity<PrzedmiotOut>(out, req.getRequestURI(), HttpStatus.PRECONDITION_FAILED);
    }

}
