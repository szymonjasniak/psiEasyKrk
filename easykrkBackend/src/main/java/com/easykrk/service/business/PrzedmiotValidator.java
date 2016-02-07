package com.easykrk.service.business;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.Kurs;
import com.easykrk.domain.model.Przedmiot;
import com.easykrk.infrastructure.repository.FormaProwadzeniaZajecRepository;
import com.easykrk.infrastructure.repository.PrzedmiotRepository;

@Component
public class PrzedmiotValidator {
	private static final String TO_MANY_FORMS = "to_many_forms";
	private static final String ONE_W_OR_U_NEEDED = "one_u_or_w_needed";
	private static final String ONE_W_NEEDED = "one_w_needed";
	private static final String INVALID_KOD = "invalid_kod";
	private static final String DUPLICATE_KOD = "duplicate_kod";
	private static final String NON_UNIQUE_KOD = "non_unique_kod";
	private static final String NON_UNIQUE_POLISH_NAME = "non_unique_polish_name";
	private static final String NON_UNIQUE_ENGLISH_NAME = "non_unique_english_name";
	private static final String WYKLAD = "W";
	private static final String UMIEJETNOSCI = "umiejętności";
	private static final String KOMPETENCJE = "kompetencje_społeczn";
	private static final String WIEDZA = "wiedza";

	@Autowired
	private PrzedmiotRepository przedmiotRepositrory;

	public void validateBySave(Przedmiot przedmiot) {
		validateZajecia(przedmiot);
		validateKekIfEctsP(przedmiot);
		validateKekIfWyklad(przedmiot);
		validateKod(przedmiot);
		validateUniquenessKod(przedmiot);
		validateUniquenessNazwa(przedmiot);
	}

	private void validateUniquenessNazwa(Przedmiot p) {
		List<Przedmiot> przedmioty = this.przedmiotRepositrory
				.findByModulKsztalceniaProgramKsztalceniaId(
						p.getModulKsztalcenia()
								.getProgramKsztalcenia()
								.getId());
		Set<String> nazwyAng = new HashSet<String>();
		Set<String> nazwyPol = new HashSet<String>();
		for (Przedmiot przedmiot : przedmioty) {
			nazwyAng.add(przedmiot.getNazwaAngielska());
			nazwyPol.add(przedmiot.getNazwaPolska());
		}

		if (nazwyAng.contains(p.getNazwaAngielska())) {
			throw new IllegalArgumentException(
					NON_UNIQUE_ENGLISH_NAME);
		}

		if (nazwyPol.contains(p.getNazwaPolska())) {
			throw new IllegalArgumentException(
					NON_UNIQUE_POLISH_NAME);
		}
	}

	private void validateUniquenessKod(Przedmiot p) {
		List<Przedmiot> przedmioty = this.przedmiotRepositrory
				.findByModulKsztalceniaProgramKsztalceniaId(
						p.getModulKsztalcenia()
								.getProgramKsztalcenia()
								.getId());
		Set<String> kody = new HashSet<String>();
		for (Przedmiot przedmiot : przedmioty) {
			kody.add(przedmiot.getKodPrzedmiotu());
		}

		if (kody.contains(p.getKodPrzedmiotu())) {
			throw new IllegalArgumentException(
					DUPLICATE_KOD);
		}
	}

	private static void validateKod(Przedmiot p) {
		String regexString = "^[A-Z]{3}[0-9]{6}$";
		Pattern regex = Pattern.compile(regexString);
		if (!regex.matcher(p.getKodPrzedmiotu())
				.matches()) {
			throw new IllegalArgumentException(INVALID_KOD);
		}
	}

	@Autowired
	private FormaProwadzeniaZajecRepository formaProwadzeniaZajecRepository;

	private void validateKekIfWyklad(Przedmiot p) {
		List<Kurs> kursy = p.getKursy();
		List<String> formaZaliczenia = new ArrayList<String>();
		for (Kurs kurs : kursy) {
			formaZaliczenia
					.add(formaProwadzeniaZajecRepository
							.findOne(
									kurs.getFormaProwadzeniaZajec()
											.getId())
							.getSkrot());
		}
		if (formaZaliczenia.contains(WYKLAD)) {
			Set<String> kategorieKek = new HashSet<String>();
			for (Kek kek : p.getKek()) {
				kategorieKek
						.add(kek.getKategoria().getNazwa());
			}
			if (!kategorieKek.contains(WIEDZA)) {
				throw new IllegalArgumentException(
						ONE_W_NEEDED);
			}
		}
	}

	private void validateKekIfEctsP(Przedmiot p) {
		List<Kurs> kursy = p.getKursy();
		List<String> formaZaliczenia = new ArrayList<String>();
		for (Kurs kurs : kursy) {
			formaZaliczenia
					.add(formaProwadzeniaZajecRepository
							.findOne(
									kurs.getFormaProwadzeniaZajec()
											.getId())
							.getSkrot());
		}
		formaZaliczenia.remove(WYKLAD);
		if (formaZaliczenia.size() > 0) {
			Set<String> kategorieKek = new HashSet<String>();
			for (Kek kek : p.getKek()) {
				kategorieKek
						.add(kek.getKategoria().getNazwa());
			}
			if (!(kategorieKek.contains(UMIEJETNOSCI)
					|| kategorieKek.contains(WIEDZA))) {
				throw new IllegalArgumentException(
						ONE_W_OR_U_NEEDED);
			}
		}
	}

	private static void validateZajecia(Przedmiot p) {
		List<Kurs> kursy = p.getKursy();
		List<String> formaZaliczenia = new ArrayList<String>();
		for (Kurs kurs : kursy) {
			formaZaliczenia.add(kurs
					.getFormaProwadzeniaZajec().getSkrot());
		}
		Set<String> setFormaZalczenia = new HashSet<>(
				formaZaliczenia);
		if (setFormaZalczenia.size() != formaZaliczenia
				.size()) {
			throw new IllegalArgumentException(
					TO_MANY_FORMS);
		}
	}
}
