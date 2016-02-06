package com.easykrk.domain.model.dto;

import java.util.List;

import lombok.Builder;
import lombok.Getter;

import com.easykrk.domain.model.Cykl;
import com.easykrk.domain.model.ObszarKsztalcenia;
import com.easykrk.domain.model.PoziomKsztalcenia;
import com.easykrk.domain.model.ProfilKsztalcenia;

@Builder
@Getter
public class ProgramKsztalceniaLookUpDTO {

	
	private Long id;
	private String kod;
	private Cykl cykl;
	private List<ObszarKsztalcenia> obszaryKsztalcenia;
	private ProfilKsztalcenia profilKsztalcenia;
	private PoziomKsztalcenia poziomKsztalcenia;
}
