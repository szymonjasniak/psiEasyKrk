package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Kek;

public interface KEKRepository  extends CrudRepository<Kek,String>{

	List<Kek> findByIdStartingWith(String s);
}
