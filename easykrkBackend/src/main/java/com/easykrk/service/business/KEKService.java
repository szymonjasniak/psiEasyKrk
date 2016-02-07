package com.easykrk.service.business;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.easykrk.domain.model.KategoriaEK;
import com.easykrk.domain.model.Kek;
import com.easykrk.domain.model.Mek;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.domain.model.dto.KEKIn;
import com.easykrk.domain.model.dto.KEKOut;
import com.easykrk.infrastructure.repository.KEKRepository;
import com.easykrk.infrastructure.repository.KategoriaRepository;
import com.easykrk.infrastructure.repository.MEKRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;
import com.easykrk.service.business.exceptions.IllegalKEKInputException;

@Service
public class KEKService {

	@Autowired
	ProgramKształceniaRepository programKształceniaRepository;

	@Autowired
	MEKRepository mekRepository;

	@Autowired
	KEKValidator validator;

	@Autowired
	KategoriaRepository kategoriaRepository;

	@Autowired
	KEKRepository KEKRepository;

	private String generateKekId() {

		return null;
	}

	@Transactional(rollbackOn=IllegalKEKInputException.class)
	public KEKOut createKEK(KEKIn in) throws IllegalKEKInputException {

		Kek KEK = new Kek();
		KEKOut out=new KEKOut();

			validator.validateKEK(in);
			ProgramKsztalcenia PK = programKształceniaRepository.findOne(in
					.getProgramKsztalceniaId());
			List<String> MEKIds=in.getMEKIds();
			List<Mek> meks = (List<Mek>) mekRepository.findAll(MEKIds);
			KategoriaEK kategoria = kategoriaRepository.findOne(in
					.getKategoriaId());

			KEK.setId(generateKekId());
			KEK.setOpis(in.getOpis());
			KEK.setKategoria(kategoria);
			KEK.setProgramKsztalcenia(PK);
			KEK.setMek(meks);
			KEK.setSpecjalnosc(PK.getSpecjalnosc());
			Kek saved = KEKRepository.save(KEK);

			PK.getKek().add(saved);
			meks.stream().forEach(m -> m.getKek().add(saved));
			PK.getSpecjalnosc().getKek().add(saved);
			
			out.setId(saved.getId());
		
		return out;
	}
}
