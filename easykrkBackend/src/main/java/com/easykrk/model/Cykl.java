package com.easykrk.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Cykl {

	private String nazwa;
	
	private List<PlanStudiow> planyStudiow;
	private List<ProgramKsztalcenia> programyKsztalcenia;
	private List<Zajecia> zajecia;
}
