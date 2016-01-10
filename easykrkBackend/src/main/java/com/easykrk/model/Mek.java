package com.easykrk.model;
import java.util.List;

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
public class Mek extends EfektKsztalcenia{
	private ProfilKsztalcenia profilKsztalcenia;
	private PoziomKsztalcenia poziomKsztalcenia;
	private ObszarKsztalcenia obszarKsztalcenia;
	private List<Kek> kek;
}
