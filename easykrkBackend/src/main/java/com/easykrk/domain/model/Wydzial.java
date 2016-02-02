package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
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
public class Wydzial {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Version
	private Long version;

	@NotBlank
	@Length(max = 255)
	private String nazwa;

	@NotBlank
	@Length(max = 10)
	private String skrotLiterowy;

	@NotBlank
	@Length(max = 3)
	private String skrotZLiczba;

	@OneToMany
	private List<Kierunek> kierunki;
}
