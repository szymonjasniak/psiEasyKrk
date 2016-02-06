package com.easykrk.domain.model;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@MappedSuperclass
public abstract class EfektKsztalcenia {

	@Id
	private String id;
	
	@Version
	@JsonIgnore
    private Long version;
	
	@ManyToOne
	private KategoriaEK kategoria;
	
	@NotBlank
    @Length(max = 400)
	private String opis;
}
