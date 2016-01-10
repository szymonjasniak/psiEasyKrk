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
public class Semestr {

	private int numer;
	private int dopuszczalnyDeficyt;
	
	private List<PlanStudiow> planyStudiow;
	private List<Kurs> kursy;
}
