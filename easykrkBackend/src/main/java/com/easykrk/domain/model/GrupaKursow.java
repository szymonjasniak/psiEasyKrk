package com.easykrk.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Version;

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
public class GrupaKursow extends Zajecia {
    @NotBlank
    @Length(max = 255)
    private String kodGrupyKursow;


    @OneToOne
    private Kurs kursGlowny;

    @ManyToMany
    private List<Kurs> kursySkladowe;
}
