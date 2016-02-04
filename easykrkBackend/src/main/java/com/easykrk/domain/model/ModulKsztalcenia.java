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
public class ModulKsztalcenia {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Version
    private Long version;
	
	@NotBlank
    @Length(max = 255)
	private String nazwa;
	
	/*@NotNull
	@Min(0)
	private int minimalnaLiczbaEcts;
 
	@ManyToOne
	private Kierunek kierunek;
	
	@ManyToOne
	private Specjalnosc specjalnosc;*/
	
	@ManyToOne
	private ModulKsztalcenia nadkategoria;
	
	@NotNull
	private Boolean czyIstniejePodkategoria;
	
	@ManyToOne
 	private ProgramKsztalcenia programKsztalcenia;
	
 
}
