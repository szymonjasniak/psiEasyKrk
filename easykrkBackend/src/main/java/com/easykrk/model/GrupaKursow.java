package com.easykrk.model;
import java.util.List;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GrupaKursow extends Zajecia {
	@NotBlank
    @Length(max = 255)
	private String kodGrupyKursow;
	
	private Kurs kursGlowny;
	private List<Kurs> kursySkladowe;
}
