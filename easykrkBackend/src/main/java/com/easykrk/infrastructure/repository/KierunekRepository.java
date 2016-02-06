package com.easykrk.infrastructure.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Kierunek;
import com.easykrk.domain.model.Specjalnosc;
import com.easykrk.domain.model.Wydzial;

public interface KierunekRepository extends CrudRepository<Kierunek,Long>{
	
	public List<Kierunek> findByNazwaContainingAndWydzialIn(String nazwa, Collection<Wydzial> wydzial);


	public List<Kierunek> findByNazwaContaining(String nazwa);

}
