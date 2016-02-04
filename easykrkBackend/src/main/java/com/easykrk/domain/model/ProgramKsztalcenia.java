package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

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
	private Long id;
	
	@NotNull
	@Length(max=50)
	private String kod;

	@Version
	private Long version;

	@NotNull
	@Min(0)
	private int liczbaSemestrow;

	@ManyToOne
	private Cykl cykl;

	@ManyToMany
	private List<FormaStudiow> formyStudiow;

	@ManyToMany
	private List<ModulKsztalcenia> modulyKsztalcenia;

	@OneToMany
	private List<UdzialProcentowy> udzialyProcentowe;

	@OneToOne
	private Specjalnosc specjalnosc;

	@OneToOne
	private Kierunek kierunek;

	@OneToOne
	private PlanStudiow planStudiow;

	@ManyToOne
	private ProfilKsztalcenia profilKsztalcenia;

	@ManyToOne
	private PoziomKsztalcenia poziomKsztalcenia;

	@OneToMany
	private List<Kek> kek;

}
