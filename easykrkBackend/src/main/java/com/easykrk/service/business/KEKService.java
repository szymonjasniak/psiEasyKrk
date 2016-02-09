package com.easykrk.service.business;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
import com.easykrk.service.business.exceptions.TooManyKEKGenerated;

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

    private static final String TOO_MANY_KEK_GENERATED = "too_many_kek_generated";

    private String generateKekId(Kek kek) throws TooManyKEKGenerated {
	StringBuilder sb = new StringBuilder();
	if (kek.getSpecjalnosc() == null) {
	    sb.append("K");
	} else {
	    sb.append("S");
	}
	sb.append(kek.getProgramKsztalcenia().getPoziomKsztalcenia().getId());
	sb.append(kek.getProgramKsztalcenia().getKierunek().getSkrot());
	sb.append("_");
	sb.append(kek.getKategoria().getNazwa().substring(0, 1).toUpperCase());
	String partialString = sb.toString();
	int counts = KEKRepository.findByIdStartingWith(partialString).size() + 1;
	if (counts < 10) {
	    sb.append(0);
	    sb.append(counts);
	} else if (counts >= 10 && counts <= 99) {
	    sb.append(counts);
	} else {
	    throw new TooManyKEKGenerated(TOO_MANY_KEK_GENERATED);
	}

	return sb.toString();
    }

    @Transactional(rollbackFor = { IllegalKEKInputException.class, TooManyKEKGenerated.class })
    public KEKOut createKEK(KEKIn in) throws IllegalKEKInputException, TooManyKEKGenerated {

	Kek KEK = new Kek();
	KEKOut out = new KEKOut();

	validator.validateKEK(in);
	ProgramKsztalcenia PK = programKształceniaRepository.findOne(in.getProgramKsztalceniaId());
	List<String> MEKIds = in.getMekIds().stream().map(i -> i.getId()).collect(Collectors.toList());
	List<Mek> meks = (List<Mek>) mekRepository.findAll(MEKIds);
	KategoriaEK kategoria = kategoriaRepository.findOne(in.getKategoriaId());

	KEK.setOpis(in.getOpis());
	KEK.setKategoria(kategoria);
	KEK.setProgramKsztalcenia(PK);
	KEK.setMek(meks);
	KEK.setSpecjalnosc(PK.getSpecjalnosc());
	String kekId = generateKekId(KEK);
	KEK.setId(kekId);
	Kek saved = KEKRepository.save(KEK);

	PK.getKek().add(saved);
	meks.stream().forEach(m -> m.getKek().add(saved));
	PK.getSpecjalnosc().getKek().add(saved);

	out.setId(saved.getId());

	return out;
    }
}
