package com.easykrk.infrastructure.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.easykrk.domain.model.AutorKarty;
import com.easykrk.domain.model.FormaProwadzeniaZajec;
import com.easykrk.domain.model.dto.AutorKartyDTO;
import com.easykrk.domain.model.dto.FormaProwadzeniaZajecDTO;

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

}
