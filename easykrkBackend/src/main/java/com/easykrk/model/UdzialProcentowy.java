package com.easykrk.model;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UdzialProcentowy {

	private float wartosc;
	
	private ObszarKsztalcenia obszarKsztalcenia;
	private ProgramKsztalcenia programKsztalcenia;
}
