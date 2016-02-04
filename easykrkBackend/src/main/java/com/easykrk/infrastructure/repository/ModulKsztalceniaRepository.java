package com.easykrk.infrastructure.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easykrk.domain.model.ModulKsztalcenia;

public interface ModulKsztalceniaRepository
		extends JpaRepository<ModulKsztalcenia, Long> {

	public List<ModulKsztalcenia> findByProgramKsztalceniaIdAndCzyIstniejePodkategoriaIsFalse(
			Long id);

}
