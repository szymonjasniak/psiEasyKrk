package com.easykrk.domain.model;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

@Getter
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
		
	@ManyToOne
	private GrupaKursow grupaKursow;
	//private boolean czyGlowny;
	private Semestr semestr;
}
