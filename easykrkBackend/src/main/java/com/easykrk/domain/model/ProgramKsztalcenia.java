package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
	private Specjalnosc specjalnosc;
	private List<ModulKsztalcenia> modulyKsztalcenia;
	private Kierunek kierunek;
	private PlanStudiow planStudiow;
	private Cykl cykl;
	private ProfilKsztalcenia profilKsztalcenia;
	private List<PoziomKsztalcenia> poziomyKsztalcenia;
	private List<FormaStudiow> formyStudiow;
	private List<UdzialProcentowy> udzialyProcentowe;
	private List<Kek> kek;
	

}
