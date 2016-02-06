package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.PoziomKsztalcenia;

public interface PoziomKsztalceniaRepository extends CrudRepository<PoziomKsztalcenia,Long> {

	List<PoziomKsztalcenia> findByNazwaContaining(String nazwa);
}
