package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

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
	private String id;
	
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
	
	private Specjalnosc specjalnosc;	
	private Kierunek kierunek;
	private PlanStudiow planStudiow;	
	private ProfilKsztalcenia profilKsztalcenia;
	private List<PoziomKsztalcenia> poziomyKsztalcenia;
	private List<UdzialProcentowy> udzialyProcentowe;
	private List<Kek> kek;
	

}
