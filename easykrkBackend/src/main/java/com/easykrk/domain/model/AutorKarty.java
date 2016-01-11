package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

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
public class AutorKarty {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Version
    private Long version;

	@NotBlank
    @Length(max = 255)
	private String imie;
	
	@NotBlank
    @Length(max = 255)
	private String nazwisko;
	
	@NotBlank
    @Length(max = 255)
	private String tytul;
	
	
	//private List<KartaPrzedmiotu> kartyPrzedmiotu;
}
