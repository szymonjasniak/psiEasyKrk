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
public class Kurs extends Zajecia {
	private int liczbaGodzinWTygodniu;
	private String kodKursu;
	
	private FormaProwadzeniaZajec formaProwadzeniaZajec;
	private Semestr semestr;
	private GrupaKursow grupaKursow;
	private boolean czyGlowny;
}
