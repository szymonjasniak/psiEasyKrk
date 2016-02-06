package com.easykrk.infrastructure.common.utils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Component;

import com.easykrk.domain.model.AutorKarty;
import com.easykrk.domain.model.FormaProwadzeniaZajec;
import com.easykrk.domain.model.ObszarKsztalcenia;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.domain.model.UdzialProcentowy;
import com.easykrk.domain.model.dto.AutorKartyDTO;
import com.easykrk.domain.model.dto.FormaProwadzeniaZajecDTO;
import com.easykrk.domain.model.dto.ProgramKsztalceniaLookUpDTO;

@Component
public class Converter {

	public AutorKartyDTO convertAutorToDto(
			AutorKarty autorKarty) {
		return AutorKartyDTO.builder()
				.fullName(autorKarty.getTytul() + " "
						+ autorKarty.getImie() + " "
						+ autorKarty.getNazwisko())
				.id(autorKarty.getId()).build();
	}

	public List<AutorKartyDTO> convertListAutorToDto(
			Iterable<AutorKarty> iterable) {
		List<AutorKartyDTO> result = new ArrayList<AutorKartyDTO>();
		for (AutorKarty autorKarty : iterable) {
			result.add(convertAutorToDto(autorKarty));
		}
		return result;
	}

	public FormaProwadzeniaZajecDTO convertFormaProwadzeniaZajecToDto(
			FormaProwadzeniaZajec forma) {
		return FormaProwadzeniaZajecDTO.builder()
				.forma(forma.getSkrot()).id(forma.getId())
				.build();
	}

	public List<FormaProwadzeniaZajecDTO> convertListFormyProwadzeniaZajec(
			Iterable<FormaProwadzeniaZajec> formyZajec) {
		List<FormaProwadzeniaZajecDTO> result = new ArrayList<FormaProwadzeniaZajecDTO>();
		for (FormaProwadzeniaZajec forma : formyZajec) {
			result.add(convertFormaProwadzeniaZajecToDto(
					forma));
		}
		return result;
	}
	
	public List<ProgramKsztalceniaLookUpDTO> convertProgramKsztalceniaListToLookUp(Iterable<ProgramKsztalcenia> programyKsztalcenia){
		
		List<ProgramKsztalceniaLookUpDTO> returnList=new LinkedList<ProgramKsztalceniaLookUpDTO>();
		for(ProgramKsztalcenia programKsztalcenia:programyKsztalcenia){
			returnList.add(convertProgramKsztalceniaToLookUp(programKsztalcenia));
		}
		return returnList;
	}
	
	public ProgramKsztalceniaLookUpDTO convertProgramKsztalceniaToLookUp(ProgramKsztalcenia programKsztalcenia){
		Set<ObszarKsztalcenia> obszaryKsztalcenia=new HashSet<ObszarKsztalcenia>();
		for(UdzialProcentowy udzial:programKsztalcenia.getUdzialyProcentowe()){
			obszaryKsztalcenia.add(udzial.getObszarKsztalcenia());
		}
		List<ObszarKsztalcenia> obszaryKsztalceniaList=new LinkedList<ObszarKsztalcenia>();
		obszaryKsztalceniaList.addAll(obszaryKsztalcenia);
		return ProgramKsztalceniaLookUpDTO.builder().id(programKsztalcenia.getId()).cykl(programKsztalcenia.getCykl())
				.kod(programKsztalcenia.getKod()).poziomKsztalcenia(programKsztalcenia.getPoziomKsztalcenia())
				.profilKsztalcenia(programKsztalcenia.getProfilKsztalcenia()).obszaryKsztalcenia(obszaryKsztalceniaList).build();
		
	}

}
