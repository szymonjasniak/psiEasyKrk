package com.easykrk.model;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
	private FormaProwadzeniaZajec formaProwadzeniaZajec;
	private Semestr semestr;
	private GrupaKursow grupaKursow;
	private boolean czyGlowny;
}
