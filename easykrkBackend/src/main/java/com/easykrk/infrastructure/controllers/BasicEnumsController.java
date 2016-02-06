package com.easykrk.infrastructure.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.Cykl;
import com.easykrk.domain.model.Kierunek;
import com.easykrk.domain.model.Specjalnosc;
import com.easykrk.domain.model.Wydzial;
import com.easykrk.infrastructure.repository.CyklRepository;
import com.easykrk.infrastructure.repository.KierunekRepository;
import com.easykrk.infrastructure.repository.SpecjalnoscRepository;
import com.easykrk.infrastructure.repository.WydzialRepository;

@RestController
@RequestMapping(value="/basics", produces=MediaType.APPLICATION_JSON_VALUE)
public class BasicEnumsController {
	
	@Autowired
	WydzialRepository wydzialRepository;
	
	@Autowired
	SpecjalnoscRepository specjalnoscRepository;
	
	@Autowired
	CyklRepository cyklRepository;
	
	@Autowired
	KierunekRepository kierunekRepository;
	
	@RequestMapping(value="/wydzial")
	@ResponseBody
	public Iterable<Wydzial> getWydzialy(){
		
		return wydzialRepository.findAll();
	}
	
	@RequestMapping(value="/specjalnosc")
	@ResponseBody
	public Iterable<Specjalnosc> getSpecjalnosci(){
		
		return specjalnoscRepository.findAll();
	}
	
	@RequestMapping(value="/cykl")
	@ResponseBody
	public Iterable<Cykl> getCykle(){
		return cyklRepository.findAll();
	}
	
	@RequestMapping(value="/kierunek")
	@ResponseBody
	public Iterable<Kierunek> getKierunki(){
		return kierunekRepository.findAll();
	}
	

}
