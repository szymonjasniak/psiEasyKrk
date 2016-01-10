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
public class PlanStudiow {
 private ProgramKsztalcenia programKsztalcenia;
 private Kierunek kierunek;
 private PlanStudiow planStudiow;
 private Cykl cykl;
 private Semestr semestr;
 private List<Przedmiot> przedmioty;
 
}
