package com.easykrk.service.business;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easykrk.domain.model.Kurs;
import com.easykrk.infrastructure.repository.CyklRepository;
import com.easykrk.infrastructure.repository.FormaProwadzeniaZajecRepository;
import com.easykrk.infrastructure.repository.FormaZaliczeniaRepository;
import com.easykrk.infrastructure.repository.KursRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;

@Service
public class KursService {

	private final static String WYKLAD = "W";

	@Autowired
	private FormaProwadzeniaZajecRepository formaProwadzeniaZajecRepository;

	@Autowired
	private FormaZaliczeniaRepository formaZaliczeniaRepository;

	@Autowired
	private KursRepository kursRepository;

	@Autowired
	private CyklRepository cyklRepository;

	@Autowired
	private ProgramKształceniaRepository programKsztalceniaRepository;

	public List<Kurs> save(List<Kurs> kursy) {
		List<Kurs> result = new ArrayList<>();
		for (Kurs kurs : kursy) {
			Kurs save = kursRepository.save(kurs);
			result.add(save);
		}
		return result;
	}

	public List<Kurs> prepareKursy(List<Kurs> kursy,
			String kodPrzedmiotu) {
		for (int i = 0; i < kursy.size(); i++) {
			kursy.set(i, prepareKurs(kursy.get(i),
					kodPrzedmiotu));
		}
		return kursy;
	}

	private Kurs prepareKurs(Kurs k, String kodPrzedmiotu) {
		k.setFormaProwadzeniaZajec(
				formaProwadzeniaZajecRepository.findOne(
						k.getFormaProwadzeniaZajec()
								.getId()));
		k.setCykl(cyklRepository
				.findOne(k.getCykl().getId()));
		k.setProgramKsztalcenia(
				programKsztalceniaRepository.findOne(
						k.getProgramKsztalcenia().getId()));
		k.setFormaZaliczenia(formaZaliczeniaRepository
				.findOne(k.getFormaZaliczenia().getId()));
		k.setCnps(30 * k.getEcts());
		k.setZzu(k.getLiczbaGodzinWTygodniu() * 15);
		k.setEcts_bk(0.6 * k.getEcts());
		setEctsP(k);
		k.setKodKursu(kodPrzedmiotu
				+ k.getFormaProwadzeniaZajec().getSkrot());
		return k;
	}

	private void setEctsP(Kurs k) {
		if (k.getFormaProwadzeniaZajec().getSkrot()
				.equals(WYKLAD)) {
			k.setEcts_p(0);
		} else {
			k.setEcts_p(k.getEcts());
		}
	}

}
