package com.easykrk.service.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.Kurs;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.infrastructure.repository.KEKRepository;
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
	private KEKRepository kekRepository;

	@Autowired
	private PrzedmiotValidator przedmiotValidator;

	@Autowired
	private KursService kursService;

	@Autowired
	private GrupaKursowService grupaKursowService;

	public void save(Przedmiot przedmiot) {

		// Modul
		przedmiot.setModulKsztalcenia(
				modulKsztalceniaRepository.findOne(przedmiot
						.getModulKsztalcenia().getId()));

		// kek
		przedmiot.setKek(prepareKek(przedmiot.getKek()));
		// Validation code
		przedmiotValidator.validateBySave(przedmiot);

		// kursy
		List<Kurs> kursy = kursService.prepareKursy(
				przedmiot.getKursy(),
				przedmiot.getKodPrzedmiotu());
		przedmiot.setKursy(kursy);
		List<Kurs> kursy1 = kursService.save(kursy);
		przedmiot.setKursy(kursy1);

		// grupa Kursow
		if (przedmiot.getGrupaKursow() != null) {
			przedmiot.setGrupaKursow(
					grupaKursowService.prepareGrupaKursow(
							przedmiot.getGrupaKursow(),
							przedmiot.getKursy(),
							przedmiot.getGrupaKursow()
									.getKursGlowny()));
		}

		przedmiotRepository.save(przedmiot);
	}

	private List<Kek> prepareKek(List<Kek> kek) {
		for (int i = 0; i < kek.size(); i++) {
			kek.set(i, kekRepository
					.findOne(kek.get(i).getId()));
		}
		return kek;

	}
}
