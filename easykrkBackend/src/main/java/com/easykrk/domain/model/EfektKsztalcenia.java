package com.easykrk.domain.model;
import javax.persistence.Id;
import javax.persistence.Version;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public abstract class EfektKsztalcenia {

	@Id
	private String id;
	
	@Version
    private Long version;
	
	@NotBlank
    @Length(max = 255)
	private String kategoria;
	
	@NotBlank
    @Length(max = 255)
	private String opis;
}
