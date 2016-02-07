package com.easykrk.infrastructure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.ProgramKsztalcenia;

public interface KekRepository
		extends JpaRepository<Kek, String> {

	public Iterable<Kek> findDistinctByOpisContainingAndKategoriaAndProgramKsztalcenia(
			String opis, KategoriaEK kategoria,
			ProgramKsztalcenia program);
}
