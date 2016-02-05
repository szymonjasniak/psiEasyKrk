package com.easykrk.domain.model.dto;

import com.easykrk.domain.model.dto.AutorKartyDTO.AutorKartyDTOBuilder;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class FormaProwadzeniaZajecDTO {

	private Long id;
	private String forma;
}
