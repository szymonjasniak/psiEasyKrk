package com.easykrk.infrastructure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easykrk.domain.model.GrupaKursow;

public interface GrupaKursowRepository
		extends JpaRepository<GrupaKursow, Long> {

}
