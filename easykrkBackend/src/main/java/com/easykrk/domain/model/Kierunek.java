package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Version;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.easykrk.domain.model.Kurs.KursBuilder;
import com.fasterxml.jackson.annotation.JsonIgnore;

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
	
	@Version
	@JsonIgnore
    private Long version;
	
	@NotBlank
    @Length(max = 255)
	private String nazwa;
	
	@NotBlank
    @Length(max = 10)
	private String skrot;
	
	@OneToMany
	@JsonIgnore
	private List<ModulKsztalcenia> modulyKsztalcenia;
	@OneToMany
	@JsonIgnore
	private List<Specjalnosc> specjalnosci;
	@OneToMany
	@JsonIgnore
	private List<ProgramKsztalcenia> programyKsztalcenia;
	@OneToMany
	@JsonIgnore
	private List<PlanStudiow> planyStudiow;
	
	//private List<KartaPrzedmiotu> kartyPrzemdiotu;
	@OneToOne
	@JsonIgnore
	private Wydzial wydzial;

}
