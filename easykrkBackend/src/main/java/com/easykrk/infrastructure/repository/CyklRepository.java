package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Cykl;

public interface CyklRepository extends CrudRepository<Cykl, Long>{

	List<Cykl> findByNazwaContaining(String nazwa);
}
