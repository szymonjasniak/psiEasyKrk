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
public class Wydzial {

	private String nazwa;
	private String skrotLiterowy;
	private String skrotZLiczba;
	
	private List<Kierunek> kierunki;
}
