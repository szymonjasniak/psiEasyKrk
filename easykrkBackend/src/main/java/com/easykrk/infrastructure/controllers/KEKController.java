package com.easykrk.infrastructure.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.infrastructure.repository.KategoriaRepository;

@RestController
@RequestMapping(value="/KEK", produces=MediaType.APPLICATION_JSON_VALUE)
public class KEKController {
	
	@Autowired
	KategoriaRepository kategoriaRepo;
	
	
	@RequestMapping(value="/kategoria", method=RequestMethod.GET)
	@ResponseBody
	public Iterable<KategoriaEK> getAllKategoria(){
		return kategoriaRepo.findAll();
	}

}
