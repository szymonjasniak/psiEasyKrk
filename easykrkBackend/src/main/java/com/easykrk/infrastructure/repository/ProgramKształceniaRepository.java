package com.easykrk.infrastructure.repository;

import java.util.Collection;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Cykl;
import com.easykrk.domain.model.FormaStudiow;
import com.easykrk.domain.model.Kierunek;
import com.easykrk.domain.model.PoziomKsztalcenia;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.domain.model.Specjalnosc;

public interface ProgramKształceniaRepository extends CrudRepository<ProgramKsztalcenia, Long> {
	
	public Iterable<ProgramKsztalcenia> findDistinctByKierunekInAndPoziomKsztalceniaAndFormaStudiowInAndCyklInAndSpecjalnoscIn(
			Collection<Kierunek> kierunki,PoziomKsztalcenia poziomKsztalcenia,Collection<FormaStudiow> formaStudiow,Collection<Cykl> cykl,Collection<Specjalnosc> specjalnosc);

}
