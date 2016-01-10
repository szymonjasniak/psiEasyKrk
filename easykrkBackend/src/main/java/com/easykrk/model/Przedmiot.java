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
public class Przedmiot {
	private int ects;
	private String nazwaAngielska;
	private String nazwaPolska;
	private boolean czyOgolnouczelniany;
	private String kodPrzedmiotu;
	
	private List<Pek> pek;
	private List<PlanStudiow> planyStudiow;
	private List<KartaPrzedmiotu> kartyPrzedmiotu;
	private List<FormaProwadzeniaZajec> formaProwadzeniaZajec;
	private List<Kek> kek;
	private ModulKsztalcenia modulKsztalcenia;
	private List<Zajecia> zajecia;

}
