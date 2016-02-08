package com.easykrk.domain.model.dto;

import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import com.easykrk.infrastructure.common.utils.sId;

@Getter
@Setter
@NoArgsConstructor
public class KEKIn {

	private Long programKsztalceniaId;
	private String cykl;
	private ArrayList<sId> mekIds;
	private Long kategoriaId;
	private String opis;
	private Long obszarKsztalceniaId;
	
} 
