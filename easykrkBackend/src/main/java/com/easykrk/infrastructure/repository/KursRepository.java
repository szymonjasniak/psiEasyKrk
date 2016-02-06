package com.easykrk.infrastructure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easykrk.domain.model.Kurs;

public interface KursRepository
		extends JpaRepository<Kurs, Long> {

}
