package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Specjalnosc;

public interface SpecjalnoscRepository extends CrudRepository<Specjalnosc,Long> {

	List<Specjalnosc> findByNazwaContaining(String nazwa);
}
