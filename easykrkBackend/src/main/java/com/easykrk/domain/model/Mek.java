package com.easykrk.domain.model;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Mek extends EfektKsztalcenia{
	private ProfilKsztalcenia profilKsztalcenia;
	private PoziomKsztalcenia poziomKsztalcenia;
	private ObszarKsztalcenia obszarKsztalcenia;
	
	@ManyToMany
	private List<Kek> kek;
}
