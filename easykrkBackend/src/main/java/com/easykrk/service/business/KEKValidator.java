package com.easykrk.service.business;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.easykrk.domain.model.Mek;
import com.easykrk.domain.model.ProgramKsztalcenia;
import com.easykrk.domain.model.dto.KEKIn;
import com.easykrk.domain.model.dto.ProgramKsztalceniaLookUpDTO;
import com.easykrk.infrastructure.common.utils.Converter;
import com.easykrk.infrastructure.repository.MEKRepository;
import com.easykrk.infrastructure.repository.ProgramKształceniaRepository;
import com.easykrk.service.business.exceptions.IllegalKEKInputException;


@Component
public class KEKValidator {

	private static final String NO_MEKS_ASSIGNED="no_meks_assigned";
	private static final String NO_OBSZAR_ASSIGNED="no_obszar_assigned";
	private static final String ILLEGAL_MEKS_ASSIGNED="illegal_meks_assigned";
	private static final String ILLEGAL_OPIS_ASSIGNED="illegal_opis_assigned";
	private static final String NULL_OR_EMPTY_INPUT="null_input";
	private static final String PK_NOT_FOUND="pk_not_found";
	
	@Autowired
	ProgramKształceniaRepository programKształceniaRepository;
	
	@Autowired
	MEKRepository mekRepository;
	
	@Autowired
	Converter converter;
	
	public void validateKEK(KEKIn in) throws IllegalKEKInputException{
		
		if (in.getProgramKsztalceniaId() == null || in.getMekIds() == null
				|| in.getMekIds().size() == 0 || in.getCykl() == null
				|| in.getCykl().equals("")
				|| in.getObszarKsztalceniaId() == null
				|| in.getKategoriaId() == null || in.getOpis() == null) {
			throw new IllegalKEKInputException(NULL_OR_EMPTY_INPUT);
		}
		
		if( !(in.getOpis().length()>20 && in.getOpis().length()<100)){
			throw new IllegalKEKInputException(ILLEGAL_OPIS_ASSIGNED);
		}
		ProgramKsztalcenia PK=programKształceniaRepository.findOne(in.getProgramKsztalceniaId());
		if(PK==null){
			throw new IllegalKEKInputException(PK_NOT_FOUND);
		}
		List<String> MEKIds=in.getMekIds().stream().map(i->i.getId()).collect(Collectors.toList());
		List<Mek> meks = (List<Mek>) mekRepository.findAll(MEKIds);
		
		if(meks ==null || meks.size()==0){
			throw new IllegalKEKInputException(NO_MEKS_ASSIGNED);
		}
		else if(meks.size() >= 1){
			List<Long> mKat=meks.stream().map(m->m.getKategoria().getId()).collect(Collectors.toList());
			List<Long> mObsz=meks.stream().map(m->m.getObszarKsztalcenia().getId()).collect(Collectors.toList());
			
			if (!mKat.contains(in.getKategoriaId())
					|| !mObsz.contains(in.getObszarKsztalceniaId())) {

				throw new IllegalKEKInputException(ILLEGAL_MEKS_ASSIGNED);
			}
		}
		
		ProgramKsztalceniaLookUpDTO PKDto=converter.convertProgramKsztalceniaToLookUp(PK);
		List<Long> pkObszary=PKDto.getObszaryKsztalcenia().stream().map(o->o.getId()).collect(Collectors.toList());
		Long KEKObszar=null;
		
		for(Long o:pkObszary){
			if(o.equals(in.getObszarKsztalceniaId())){
				KEKObszar=in.getObszarKsztalceniaId();
				break;
			}
		}
		if(KEKObszar==null){
			throw new IllegalKEKInputException(NO_OBSZAR_ASSIGNED);
		}
		
		
		for (Mek m : meks) {
			if (!pkObszary.contains(m.getObszarKsztalcenia().getId())
					|| !m.getPoziomKsztalcenia().getId()
							.equals(PKDto.getPoziomKsztalcenia().getId())
					|| !m.getProfilKsztalcenia().getId()
							.equals(PKDto.getProfilKsztalcenia().getId())) {
				throw new IllegalKEKInputException(ILLEGAL_MEKS_ASSIGNED);
			}
		}
	}
		
}
