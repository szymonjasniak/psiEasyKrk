package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.Repository;

import com.easykrk.domain.model.Wydzial;

public interface WydzialRepository extends CrudRepository<Wydzial,Long>{

	List<Wydzial> findByNazwaContaining(String nazwa);
}
