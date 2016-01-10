package com.easykrk.model;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ModulKsztalcenia {
 private String nazwa;
 private String typ;
 private int minimalnaLiczbaEcts;
 
 private ModulKsztalcenia nadkategoria;
 private ModulKsztalcenia podkategoria;
 private KartaPrzedmiotu kartaPrzedmiotu;
 private Kierunek kierunek;
 private List<ProgramKsztalcenia> programKsztalcenia;
 private Specjalnosc specjalnosc;
 
}
