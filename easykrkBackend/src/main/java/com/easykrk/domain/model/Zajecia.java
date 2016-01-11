package com.easykrk.domain.model;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Zajecia {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Version
    private Long version;
	
	@NotNull
    @Min(0)
	private int ects;
	
	@NotNull
	@ManyToOne(fetch=FetchType.EAGER) 
	private FormaZaliczenia formaZaliczenia;
	
	@NotNull
    @Min(0)
	private int zzu;
	
	@NotNull
    @Min(0)
	private int cnps;
	
	@NotNull
    @Min(0)
	private int ects_p;
	
	@NotNull
    @Min(0)
	private int ects_bk;
	
	@ManyToMany
	private Cykl cykl;
	
	private ProgramKsztalcenia programKsztalcenia;
	
	private Przedmiot przedmiot;


	
}
