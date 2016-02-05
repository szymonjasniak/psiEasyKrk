package com.easykrk.infrastructure.repository;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.FormaZaliczenia;

public interface FormaZaliczeniaRepository
		extends CrudRepository<FormaZaliczenia, Long> {

}
