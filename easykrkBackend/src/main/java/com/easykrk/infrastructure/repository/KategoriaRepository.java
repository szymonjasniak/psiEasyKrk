package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.KategoriaEK;

public interface KategoriaRepository extends CrudRepository<KategoriaEK, Long> {

	List<KategoriaEK> findByNazwaContaining(String nazwa);
}
