package com.easykrk.model;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Zajecia {

	private int ects;
	private FormaZaliczenia formaZaliczenia;
	private int zzu;
	private int cnps;
	private int ects_p;
	private int ects_bk;
	
	private ProgramKsztalcenia programKsztalcenia;
	private Przedmiot przedmiot;


	
}
