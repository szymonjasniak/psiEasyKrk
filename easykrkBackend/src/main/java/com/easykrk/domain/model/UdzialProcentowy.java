package com.easykrk.domain.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Version;
import javax.validation.constraints.Max;
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
public class UdzialProcentowy {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Version
	private Long version;

	@NotNull
	@Min(0)
	@Max(1)
	private float wartosc;

	@ManyToOne
	@PrimaryKeyJoinColumn
	private ObszarKsztalcenia obszarKsztalcenia;

	@ManyToOne
	@PrimaryKeyJoinColumn
	private ProgramKsztalcenia programKsztalcenia;
}
