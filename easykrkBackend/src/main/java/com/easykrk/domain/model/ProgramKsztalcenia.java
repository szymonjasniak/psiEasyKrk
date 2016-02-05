package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

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
public class ProgramKsztalcenia {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotNull
	@Length(max=70)
	private String kod;

	@Version
	@JsonIgnore
	private Long version;

	@NotNull
	@Min(0)
	@JsonIgnore
	private int liczbaSemestrow;

	@ManyToOne
	@JsonIgnore
	private Cykl cykl;

	@ManyToOne
	@JsonIgnore
	private FormaStudiow formaStudiow;

	@ManyToMany
	@JsonIgnore
	private List<ModulKsztalcenia> modulyKsztalcenia;

	@OneToMany
	@JsonIgnore
	private List<UdzialProcentowy> udzialyProcentowe;

	@OneToOne
	@JsonIgnore
	private Specjalnosc specjalnosc;

	@OneToOne
	@JsonIgnore
	private Kierunek kierunek;

	@OneToOne
	@JsonIgnore
	private PlanStudiow planStudiow;

	@ManyToOne
	@JsonIgnore
	private ProfilKsztalcenia profilKsztalcenia;

	@ManyToOne
	@JsonIgnore
	private PoziomKsztalcenia poziomKsztalcenia;

	@OneToMany
	@JsonIgnore
	private List<Kek> kek;

}
