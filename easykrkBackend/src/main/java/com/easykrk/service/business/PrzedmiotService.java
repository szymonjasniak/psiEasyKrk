package com.easykrk.service.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.Kurs;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.domain.model.dto.PrzedmiotOut;
import com.easykrk.infrastructure.repository.AutorKartyRepository;
import com.easykrk.infrastructure.repository.KEKRepository;
import com.easykrk.infrastructure.repository.KartaPrzedmiotuRepository;
import com.easykrk.infrastructure.repository.KursRepository;
import com.easykrk.infrastructure.repository.ModulKsztalceniaRepository;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;
import com.easykrk.service.business.exceptions.InvalidPrzedmiotPropertiesException;

@Service
public class PrzedmiotService {
    private static final String ADDED = "subject_added";

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

    @Autowired
    private AutorKartyRepository autorRepository;

    @Autowired
    private KartaPrzedmiotuRepository kartaRepository;

    @Transactional(rollbackFor = { InvalidPrzedmiotPropertiesException.class })
    public PrzedmiotOut save(Przedmiot przedmiot) throws InvalidPrzedmiotPropertiesException {
	PrzedmiotOut out = new PrzedmiotOut();
	przedmiot.getKartaPrzedmiotu()
		.setAutorKarty(autorRepository.findOne(przedmiot.getKartaPrzedmiotu().getAutorKarty().getId()));
	przedmiot.getKartaPrzedmiotu().setJezyk("polski");
	przedmiot.setKartaPrzedmiotu(kartaRepository.save(przedmiot.getKartaPrzedmiotu()));

	// Modul
	przedmiot.setModulKsztalcenia(modulKsztalceniaRepository.findOne(przedmiot.getModulKsztalcenia().getId()));

	// kursy
	List<Kurs> kursy = kursService.prepareKursy(przedmiot.getKursy(), przedmiot.getKodPrzedmiotu());
	przedmiot.setKursy(kursy);
	List<Kurs> kursy1 = kursService.save(kursy);
	przedmiot.setKursy(kursy1);

	// kek
	przedmiot.setKek(prepareKek(przedmiot.getKek()));
	// Validation code
	przedmiotValidator.validateBySave(przedmiot);

	// grupa Kursow
	if (przedmiot.getGrupaKursow() != null) {
	    przedmiot.setGrupaKursow(grupaKursowService.prepareGrupaKursow(przedmiot.getGrupaKursow(),
		    przedmiot.getKursy(), przedmiot.getGrupaKursow().getKursGlowny(), przedmiot.getKodPrzedmiotu()));
	} else {

	}

	przedmiotRepository.save(przedmiot);
	out.setMessage(ADDED);
	out.setId(przedmiot.getKodPrzedmiotu());
	return out;
    }

    private List<Kek> prepareKek(List<Kek> kek) {
	for (int i = 0; i < kek.size(); i++) {
	    kek.set(i, kekRepository.findOne(kek.get(i).getId()));
	}
	return kek;

    }
}
