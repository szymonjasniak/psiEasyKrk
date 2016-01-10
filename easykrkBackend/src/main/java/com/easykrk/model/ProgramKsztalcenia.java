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
public class ProgramKsztalcenia {
	@Id
	private String id;
	private int liczbaSemestrow;
	private Specjalnosc specjalnosc;
	private List<ModulKsztalcenia> modulyKsztalcenia;
	private Kierunek kierunek;
	private PlanStudiow planStudiow;
	private Cykl cykl;
	private ProfilKsztalcenia profilKsztalcenia;
	private List<PoziomKsztalcenia> poziomyKsztalcenia;
	private List<FormaStudiow> formyStudiow;
	private List<UdzialProcentowy> udzialyProcentowe;
	private List<Kek> kek;
	

}
