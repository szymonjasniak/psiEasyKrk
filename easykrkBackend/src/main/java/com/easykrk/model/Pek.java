package com.easykrk.model;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
public class Pek extends EfektKsztalcenia {
	private Przedmiot przedmiot;
	private List<Kek> kek;
	private KartaPrzedmiotu kartaPrzedmiotu;
}
