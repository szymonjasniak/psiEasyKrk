package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.FormaStudiow;

public interface FormaStudiowRepository extends CrudRepository<FormaStudiow,Long>{
	
	public List<FormaStudiow> findByNazwaContaining(String nazwa);

}
