package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@Entity
public class Kek extends EfektKsztalcenia {

    @ManyToMany
    private List<Mek> mek;

    @ManyToOne
    private ProgramKsztalcenia programKsztalcenia;

    @ManyToOne
    private Specjalnosc specjalnosc;

   /* @ManyToMany
    private List<Przedmiot> przedmiot;*/

    @ManyToMany
    private List<Pek> pek;
}
