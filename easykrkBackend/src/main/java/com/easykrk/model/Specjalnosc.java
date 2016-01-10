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
public class Specjalnosc {

	private String nazwa;
	private String skrot;
	
	private ProgramKsztalcenia programKsztalcenia;
	private List<Kek> kek;
	private List<ModulKsztalcenia> modulyKsztalcenia;
	private Kierunek kierunek;
	
}
