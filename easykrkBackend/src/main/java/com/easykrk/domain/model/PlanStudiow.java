package com.easykrk.domain.model;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class PlanStudiow {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
 private ProgramKsztalcenia programKsztalcenia;
 private Kierunek kierunek;
 private PlanStudiow planStudiow;
 private Cykl cykl;
 private Semestr semestr;
 private List<Przedmiot> przedmioty;
 
}
