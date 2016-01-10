package com.easykrk.domain.model;
import java.util.List;

import javax.persistence.Entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@Entity
public class Pek extends EfektKsztalcenia {
	private Przedmiot przedmiot;
	private List<Kek> kek;
	private KartaPrzedmiotu kartaPrzedmiotu;
}
