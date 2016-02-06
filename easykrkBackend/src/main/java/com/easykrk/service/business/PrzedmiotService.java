package com.easykrk.service.business;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easykrk.domain.model.Kurs;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.infrastructure.repository.KursRepository;
import com.easykrk.infrastructure.repository.ModulKsztalceniaRepository;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;

@Service
public class PrzedmiotService {

	@Autowired
	private PrzedmiotRepository przedmiotRepository;

	@Autowired
	private ModulKsztalceniaRepository modulKsztalceniaRepository;

	@Autowired
	private KursRepository kursRepository;

	@Autowired
	private PrzedmiotValidator przedmiotValidator;

	public void save(Przedmiot przedmiot) {

		// Validation code
		przedmiotValidator.validateBySave(przedmiot);

		// Modul
		przedmiot.setModulKsztalcenia(
				modulKsztalceniaRepository.findOne(przedmiot
						.getModulKsztalcenia().getId()));
		List<Kurs> kursy = new ArrayList<>();
		kursy.add(kursRepository.findOne(
				przedmiot.getKursy().get(0).getId()));
		przedmiot.setKursy(kursy);
		przedmiotRepository.save(przedmiot);
	}

}
