package com.easykrk.infrastructure.repository;

import java.util.Collection;

import org.springframework.data.repository.CrudRepository;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Mek;
import com.easykrk.domain.model.ObszarKsztalcenia;
import com.easykrk.domain.model.PoziomKsztalcenia;
import com.easykrk.domain.model.ProfilKsztalcenia;

public interface MEKRepository extends CrudRepository<Mek, Long> {

	public Iterable<Mek> findDistinctByProfilKsztalceniaAndPoziomKsztalceniaAndObszarKsztalceniaInAndOpisContainingAndKategoria(
			ProfilKsztalcenia profilKsztalcenia,
			PoziomKsztalcenia poziomKsztalcenia,
			Collection<ObszarKsztalcenia> obszaryKsztalcenia, String opis,
			KategoriaEK kategoria);

	public Iterable<Mek> findDistinctByProfilKsztalceniaAndPoziomKsztalceniaAndObszarKsztalceniaAndOpisContainingAndKategoria(
			ProfilKsztalcenia profilKsztalcenia,
			PoziomKsztalcenia poziomKsztalcenia,
			ObszarKsztalcenia obszarKsztalcenia, String opis,
			KategoriaEK kategoria);
}
