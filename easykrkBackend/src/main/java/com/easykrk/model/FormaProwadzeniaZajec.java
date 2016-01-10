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
public class FormaProwadzeniaZajec {
 private String nazwa;
 private String skrot;
 private boolean czyPraktyczny;
 
 private List<Przedmiot> przedmioty;
 private Kurs kurs;
}
