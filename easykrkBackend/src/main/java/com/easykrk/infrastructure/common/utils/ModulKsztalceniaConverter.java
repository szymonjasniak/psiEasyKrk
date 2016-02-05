package com.easykrk.infrastructure.common.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.easykrk.domain.model.ModulKsztalcenia;
import com.easykrk.domain.model.dto.ModulKsztalceniaDTO;
import com.easykrk.infrastructure.repository.ModulKsztalceniaRepository;

@Component
public class ModulKsztalceniaConverter {

	@Autowired
	ModulKsztalceniaRepository modulKsztalceniaRepository;

	public List<ModulKsztalceniaDTO> convertList(
			List<ModulKsztalcenia> modulyList) {
		List<ModulKsztalceniaDTO> result = new ArrayList<ModulKsztalceniaDTO>();
		for (ModulKsztalcenia modulKsztalcenia : modulyList) {
			result.add(convertModulKsztalceniaToDTO(
					modulKsztalcenia));
		}
		return result;
	}

	public ModulKsztalceniaDTO convertModulKsztalceniaToDTO(
			ModulKsztalcenia modul) {
		List<ModulKsztalcenia> hierarchy = new ArrayList<>();
		hierarchy.add(modul);
		hierarchy = getNadkategoriaList(modul, hierarchy);
		String name = "";
		for (ModulKsztalcenia modulKsztalcenia : hierarchy) {
			name = modulKsztalcenia.getNazwa() + " " + name;
		}
		return ModulKsztalceniaDTO.builder()
				.id(modul.getId()).nazwa(name.toUpperCase())
				.build();
	}

	private List<ModulKsztalcenia> getNadkategoriaList(
			ModulKsztalcenia modul,
			List<ModulKsztalcenia> hierarchy) {
		if (modul.getNadkategoria() != null) {
			hierarchy.add(modul.getNadkategoria());
			return (getNadkategoriaList(
					modul.getNadkategoria(), hierarchy));
		} else {
			return hierarchy;
		}

	}

}
