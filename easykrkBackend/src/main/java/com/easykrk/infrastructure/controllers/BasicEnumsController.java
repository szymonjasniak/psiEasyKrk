package com.easykrk.infrastructure.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.Cykl;
import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kierunek;
import com.easykrk.domain.model.Specjalnosc;
import com.easykrk.domain.model.Wydzial;
import com.easykrk.infrastructure.repository.CyklRepository;
import com.easykrk.infrastructure.repository.KategoriaRepository;
import com.easykrk.infrastructure.repository.KierunekRepository;
import com.easykrk.infrastructure.repository.SpecjalnoscRepository;
import com.easykrk.infrastructure.repository.WydzialRepository;
import com.easykrk.infrastructure.security.DomainUser;

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
	
	@Autowired
	KategoriaRepository kategoriaRepository;
	
	@RequestMapping(value="/wydzial")
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<Wydzial> getWydzialy(@AuthenticationPrincipal DomainUser u){
		
		return wydzialRepository.findAll();
	}
	
	@RequestMapping(value="/specjalnosc")
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<Specjalnosc> getSpecjalnosci(){
		
		return specjalnoscRepository.findAll();
	}
	
	@RequestMapping(value="/cykl")
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<Cykl> getCykle(){
		return cyklRepository.findAll();
	}
	
	@RequestMapping(value="/kierunek")
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<Kierunek> getKierunki(){
		return kierunekRepository.findAll();
	}
	
	@RequestMapping(value="/kategoria")
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<KategoriaEK> getKategorie(){
		return kategoriaRepository.findAll();
	}
	

}
