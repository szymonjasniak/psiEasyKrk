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
public class KartaPrzedmiotu {
	private String jezyk;
	private AutorKarty autorKarty;
	private List<Przedmiot> przedmioty;

}
