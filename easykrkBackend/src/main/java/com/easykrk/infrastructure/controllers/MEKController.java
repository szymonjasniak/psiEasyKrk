package com.easykrk.infrastructure.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Mek;
import com.easykrk.domain.model.ObszarKsztalcenia;
import com.easykrk.domain.model.dto.ProgramKsztalceniaLookUpDTO;
import com.easykrk.infrastructure.common.utils.Converter;
import com.easykrk.infrastructure.repository.KategoriaRepository;
import com.easykrk.infrastructure.repository.MEKRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;

@RestController
@RequestMapping(value="/MEK",produces=MediaType.APPLICATION_JSON_VALUE)
public class MEKController {

	
	@Autowired
	ProgramKształceniaRepository programKsztalceniaRepository;
	
	@Autowired
	MEKRepository mekRepository;
	
	@Autowired
	KategoriaRepository kategoriaRepository;
	
	@Autowired
	Converter converter;
	
	
	@RequestMapping(value="/getAll/{programKsztalceniaId}/{kategoriaId}")
	@ResponseBody
	public Iterable<Mek> getMek(
			@PathVariable Long programKsztalceniaId,
			@PathVariable Long kategoriaId,
			@RequestParam(value = "opis", required = true, defaultValue = "") String opis,
			@RequestParam(value = "obszar", required = true, defaultValue = "") Long obszar)
			{

		ProgramKsztalceniaLookUpDTO pk = converter
				.convertProgramKsztalceniaToLookUp(programKsztalceniaRepository
						.findOne(programKsztalceniaId));
		KategoriaEK kategoriaEk = kategoriaRepository.findOne(kategoriaId);
		
		if (obszar != null) {
			for(ObszarKsztalcenia o:pk.getObszaryKsztalcenia()){
				if(o.getId().equals(obszar)){
					return mekRepository.findDistinctByProfilKsztalceniaAndPoziomKsztalceniaAndObszarKsztalceniaAndOpisContainingAndKategoria(
							pk.getProfilKsztalcenia(),
							pk.getPoziomKsztalcenia(),
							o, opis, kategoriaEk);
					}
				}
			}
		 else {
			return mekRepository
					.findDistinctByProfilKsztalceniaAndPoziomKsztalceniaAndObszarKsztalceniaInAndOpisContainingAndKategoria(
							pk.getProfilKsztalcenia(),
							pk.getPoziomKsztalcenia(),
							pk.getObszaryKsztalcenia(), opis, kategoriaEk);
		}
		return null;
	}
}
