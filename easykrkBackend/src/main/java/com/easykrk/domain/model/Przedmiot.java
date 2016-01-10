package com.easykrk.domain.model;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

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
@Entity
public class Przedmiot {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotNull
    @Min(0)
	private int ects;
	
	@NotBlank
    @Length(max = 255)
	private String nazwaAngielska;
	
	@NotBlank
    @Length(max = 255)
	private String nazwaPolska;
	
	@NotNull
	private boolean czyOgolnouczelniany;
	
	@NotBlank
    @Length(max = 255)
	private String kodPrzedmiotu;
	
	private List<Pek> pek;
	private List<PlanStudiow> planyStudiow;
	private List<KartaPrzedmiotu> kartyPrzedmiotu;
	private List<FormaProwadzeniaZajec> formaProwadzeniaZajec;
	private List<Kek> kek;
	private ModulKsztalcenia modulKsztalcenia;
	private List<Zajecia> zajecia;

}
