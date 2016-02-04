package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Pek extends EfektKsztalcenia {
    @ManyToOne
    private Przedmiot przedmiot;

    @ManyToMany
    private List<Kek> kek;

    // private KartaPrzedmiotu kartaPrzedmiotu;
}
