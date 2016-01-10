package com.easykrk.model;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
public class Kek extends EfektKsztalcenia{

	private List<Mek> mek;
	private ProgramKsztalcenia programKsztalcenia;
	private Specjalnosc specjalnosc;
	private Przedmiot przedmiot;
	private List<Pek> pek;
}
