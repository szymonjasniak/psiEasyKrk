package com.easykrk.infrastructure.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.Przedmiot;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;

@RestController
@RequestMapping(value = "/przedmiot", produces = MediaType.APPLICATION_JSON_VALUE)
public class PrzedmiotController {

    private static Logger LOG = LoggerFactory.getLogger(PrzedmiotController.class);

    @Autowired
    private PrzedmiotRepository przedmiotRepository;

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ResponseBody
    @ExceptionHandler
    public Iterable<Przedmiot> getAll() throws Exception {
	return przedmiotRepository.findAll();
    }

    /*
     * @RequestMapping(value = "/save", method = RequestMethod.PUT)
     * 
     * @ResponseBody
     * 
     * @ExceptionHandler public void save(@RequestBody Przedmiot przedmiot)
     * throws Exception { LOG.debug("Przedmiot with ID: " +
     * przedmiot.getKodPrzedmiotu() + " saved");
     * 
     * }
     */
}
