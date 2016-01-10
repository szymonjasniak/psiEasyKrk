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
public class GrupaKursow extends Zajecia {
	private String kodGrupyKursow;
	
	private Kurs kursGlowny;
	private List<Kurs> kursySkladowe;
}
