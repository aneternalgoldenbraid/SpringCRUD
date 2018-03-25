package com.sehirler.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sehirler.dao.IlRepository;
import com.sehirler.models.Il;


@Service
public class IlService {

	@Autowired
	private IlRepository ilRepository;
	
	public Collection<Il> illeriGetir() {
		List<Il> iller = new ArrayList<Il>();
		for(Il il : ilRepository.findAll()) {
			iller.add(il);
		}
		return iller;
	}
	
	public Il ilGetir(long no) {
		return ilRepository.findByNo(no);
	}
	
	public void IlSil (long no) {
		ilRepository.deleteById(no);
	}
	
	public void IlKaydet(Il il) {
		ilRepository.save(il);
	}
	
	//public Collection<Ilce> ilceleriniGetir(long no) {
	//	List<Ilce> ilceler = new ArrayList<Ilce>();
	//	for(Ilce ilce : deneme1Repository.findByIlceIlNo(no)) {
	//		ilceler.add(ilce);
	//	}
	//	return ilceler;
	//}
}
