package com.easykrk.domain.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Kurs extends Zajecia {

    @NotNull
    @Min(0)
    private int liczbaGodzinWTygodniu;

    @NotBlank
    @Length(max = 255)
    private String kodKursu;

    @OneToOne
    private FormaProwadzeniaZajec formaProwadzeniaZajec;

    // @ManyToOne
    // private GrupaKursow grupaKursow;
    // private boolean czyGlowny;

    @NotNull
    @Min(0)
    private Integer semestr;
    
    @NotNull
    @Min(0)
    private int ects;

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)
    private FormaZaliczenia formaZaliczenia;

    @NotNull
    @Min(0)
    private int zzu;

    @NotNull
    @Min(0)
    private int cnps;

    @NotNull
    @Min(0)
    private int ects_p;

    @NotNull
    @Min(0)
    private Double ects_bk;
}
