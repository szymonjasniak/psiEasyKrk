package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Mek extends EfektKsztalcenia {

    @ManyToOne
    @JsonIgnore
    private ProfilKsztalcenia profilKsztalcenia;

    @ManyToOne
    @JsonIgnore
    private PoziomKsztalcenia poziomKsztalcenia;

    @ManyToOne
    private ObszarKsztalcenia obszarKsztalcenia;

    @ManyToMany
    @JsonIgnore
    private List<Kek> kek;
}
