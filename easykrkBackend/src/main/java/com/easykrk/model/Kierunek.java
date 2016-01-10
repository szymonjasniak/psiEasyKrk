package com.easykrk.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.easykrk.model.Kurs.KursBuilder;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Kierunek {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotBlank
    @Length(max = 255)
	private String nazwa;
	
	@NotBlank
    @Length(max = 10)
	private String skrot;
	
	private List<ModulKsztalcenia> modulyKsztalcenia;
	private List<Specjalnosc> specjalnosci;
	private List<ProgramKsztalcenia> programyKsztalcenia;
	private List<PlanStudiow> planyStudiow;
	private List<KartaPrzedmiotu> kartyPrzemdiotu;
	private Wydzial wydzial;

}
