package com.easykrk.service.business;

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

	public List<Kurs> prepareKursy(List<Kurs> kursy) {
		for (int i = 0; i < kursy.size(); i++) {
			kursy.set(i, prepareKurs(kursy.get(i)));
		}
		return kursy;
	}

	private Kurs prepareKurs(Kurs k) {
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
		return k;
	}

}
