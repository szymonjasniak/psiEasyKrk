package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.ProgramKsztalcenia;

public interface KEKRepository extends CrudRepository<Kek, String> {

    public List<Kek> findDistinctByOpisContainingAndKategoriaAndProgramKsztalcenia(String opis, KategoriaEK kategoriaEk,
	    ProgramKsztalcenia pk);

    public List<Kek> findDistinctByOpisContainingAndProgramKsztalcenia(String opis, ProgramKsztalcenia pk);

    public List<Kek> findByIdStartingWith(String partialString);

}
