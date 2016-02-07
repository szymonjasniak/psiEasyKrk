package com.easykrk.service.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easykrk.domain.model.GrupaKursow;
import com.easykrk.domain.model.Kurs;
import com.easykrk.infrastructure.repository.CyklRepository;
import com.easykrk.infrastructure.repository.FormaProwadzeniaZajecRepository;
import com.easykrk.infrastructure.repository.FormaZaliczeniaRepository;
import com.easykrk.infrastructure.repository.GrupaKursowRepository;
import com.easykrk.infrastructure.repository.KursRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;

@Service
public class GrupaKursowService {

	@Autowired
	private FormaProwadzeniaZajecRepository formaProwadzeniaZajecRepository;

	@Autowired
	private FormaZaliczeniaRepository formaZaliczeniaRepository;

	@Autowired
	private GrupaKursowRepository GrupaKursowRepository;

	@Autowired
	private KursRepository kursRepository;

	@Autowired
	private CyklRepository cyklRepository;

	@Autowired
	private ProgramKształceniaRepository programKsztalceniaRepository;

	public GrupaKursow prepareGrupaKursow(GrupaKursow k,
			List<Kurs> kursy, Kurs kursGlowny) {
		k.setCykl(cyklRepository
				.findOne(k.getCykl().getId()));
		k.setProgramKsztalcenia(
				programKsztalceniaRepository.findOne(
						k.getProgramKsztalcenia().getId()));
		k.setKursySkladowe(kursy);
		k.setKursGlowny(
				kursRepository.findOne(kursGlowny.getId()));
		setKodGrupy(k);

		return k;
	}

	private GrupaKursow setKodGrupy(GrupaKursow gk) {
		String kod = "";
		for (Kurs kurs : gk.getKursySkladowe()) {
			kod = kod + kurs.getFormaProwadzeniaZajec()
					.getSkrot();
		}
		gk.setKodGrupyKursow(kod);
		return gk;
	}
}
