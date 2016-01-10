package com.easykrk.model;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public abstract class EfektKsztalcenia {

	private String id;
	private String kategoria;
	private String opis;
}
