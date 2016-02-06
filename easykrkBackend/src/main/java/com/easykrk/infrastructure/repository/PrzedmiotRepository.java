package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.Przedmiot;

public interface PrzedmiotRepository
		extends CrudRepository<Przedmiot, Long> {

	public List<Przedmiot> findByModulKsztalceniaProgramKsztalceniaId(
			Long id);

	public List<Przedmiot> findByModulKsztalceniaId(
			Long id);

}
