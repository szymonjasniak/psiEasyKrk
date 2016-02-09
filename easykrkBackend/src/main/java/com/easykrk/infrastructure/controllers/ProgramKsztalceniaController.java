package com.easykrk.infrastructure.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.easykrk.domain.model.Cykl;
import com.easykrk.domain.model.FormaStudiow;
import com.easykrk.domain.model.Kierunek;
import com.easykrk.domain.model.PoziomKsztalcenia;
import com.easykrk.domain.model.Specjalnosc;
import com.easykrk.domain.model.Wydzial;
import com.easykrk.domain.model.dto.ProgramKsztalceniaLookUpDTO;
import com.easykrk.infrastructure.common.utils.Converter;
import com.easykrk.infrastructure.repository.CyklRepository;
import com.easykrk.infrastructure.repository.FormaStudiowRepository;
import com.easykrk.infrastructure.repository.KierunekRepository;
import com.easykrk.infrastructure.repository.PoziomKsztalceniaRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;
import com.easykrk.infrastructure.repository.SpecjalnoscRepository;
import com.easykrk.infrastructure.repository.WydzialRepository;

@RestController

@RequestMapping(value = "/PK", produces = MediaType.APPLICATION_JSON_VALUE)
public class ProgramKsztalceniaController {

	@Autowired
	KierunekRepository kierunekRepository;
	@Autowired
	WydzialRepository wydzialRepository;
	@Autowired
	SpecjalnoscRepository specjalnoscRepository;
	@Autowired
	CyklRepository cyklRepository;
	@Autowired
	FormaStudiowRepository formaStudiowRepository;
	@Autowired
	PoziomKsztalceniaRepository poziomKsztalceniaRepository;
	@Autowired
	ProgramKształceniaRepository programKsztalceniaRepository;
	@Autowired
	Converter converter;

	@RequestMapping(value = "/getAll", method = RequestMethod.GET)
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public Iterable<ProgramKsztalceniaLookUpDTO> getProgramyKsztalcenia(
			@RequestParam(value = "kierunek", required = false, defaultValue = "") String kierunek,
			@RequestParam(value = "wydzial", required = false, defaultValue = "") String wydzial,
			@RequestParam(value = "specjalnosc", required = false, defaultValue = "") String specjalnosc,
			@RequestParam(value = "stopien", required = false, defaultValue = "") String stopien,
			@RequestParam(value = "forma", required = false, defaultValue = "") String forma,
			@RequestParam(value = "cykl", required = false, defaultValue = "") String cykl) {

		List<Wydzial> wydzialy = wydzialRepository
				.findByNazwaContaining(wydzial);
		List<Specjalnosc> specjalnosci = specjalnoscRepository
				.findByNazwaContaining(specjalnosc);

		List<Kierunek> kier = kierunekRepository
				.findByNazwaContaining(kierunek);

		List<Kierunek> kierunki = kierunekRepository
				.findByNazwaContainingAndWydzialIn(kierunek,
						wydzialy);

		List<Cykl> cykle = cyklRepository
				.findByNazwaContaining(cykl);
		Long stopienL;
		PoziomKsztalcenia poziomy = new PoziomKsztalcenia();
		try {
			stopienL = Long.parseLong(stopien);
			poziomy = poziomKsztalceniaRepository
					.findOne(stopienL);
		} catch (NumberFormatException e) {
		}
		List<FormaStudiow> formy = formaStudiowRepository
				.findByNazwaContaining(forma);

		return converter
				.convertProgramKsztalceniaListToLookUp(
						programKsztalceniaRepository
								.findDistinctByKierunekInAndPoziomKsztalceniaAndFormaStudiowInAndCyklInAndSpecjalnoscIn(
										kierunki, poziomy,
										formy, cykle,
										specjalnosci));
	}

	@RequestMapping(value = "/getLiczbaSemestrow", method = RequestMethod.GET)
	@ResponseBody
	@PreAuthorize("hasAuthority('ROLE_DOMAIN_USER')")
	public int getLiczbaSemestrow(
			@RequestParam(value = "program", required = false, defaultValue = "0") Long program) {
		if (program == 0) {
			return 0;
		} else {
			return programKsztalceniaRepository
					.findOne(program).getLiczbaSemestrow();
		}

	}

}
