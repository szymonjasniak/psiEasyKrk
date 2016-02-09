package com.easykrk.infrastructure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easykrk.domain.model.KartaPrzedmiotu;

public interface KartaPrzedmiotuRepository
		extends JpaRepository<KartaPrzedmiotu, Long> {

}
