package com.easykrk.domain.model.dto;

import com.easykrk.infrastructure.common.utils.MEKIds;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class KEKIn {

	private Long programKsztalceniaId;
	private String cykl;
	private MEKIds MEKIds;
	private Long kategoriaId;
	private String opis;
	private Long obszarKsztalceniaId;
	
} 
