package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Przedmiot {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Version
    private Long version;

    @NotNull
    @Min(0)
    private int ects;

    @NotBlank
    @Length(max = 255)
    private String nazwaAngielska;

    @NotBlank
    @Length(max = 255)
    private String nazwaPolska;

    @NotNull
    private boolean czyOgolnouczelniany;

    @NotBlank
    @Length(max = 255)
    private String kodPrzedmiotu;

    @ManyToMany
    private List<FormaProwadzeniaZajec> formaProwadzeniaZajec;

    @OneToMany
    private List<Pek> pek;

    @ManyToMany
    private List<PlanStudiow> planyStudiow;

    @OneToOne
    private KartaPrzedmiotu kartaPrzedmiotu;

    @OneToMany
    private List<Kek> kek;

    @ManyToOne
    private ModulKsztalcenia modulKsztalcenia;

    @OneToMany
    private List<Zajecia> zajecia;

}
