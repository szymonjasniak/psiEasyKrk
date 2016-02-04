package com.easykrk.domain.model;

import javax.persistence.Entity;
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
public class KategoriaEK {

	@Id
	private Long id;

	@Version
	private Long version;

	@NotBlank
	@Length(max = 20)
	private String nazwa;
}
