package com.sehirler.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sehirler.dao.IlceRepository;
import com.sehirler.models.Ilce;

@Service
public class IlceService {

	@Autowired
	private IlceRepository ilceRepository;
	
	public Collection<Ilce> ilceleriGetir() {
		List<Ilce> ilceler = new ArrayList<Ilce>();
		for (Ilce ilce : ilceRepository.findAll()) {
			ilceler.add(ilce);
		}
		return ilceler;
	}
	
	public Ilce ilceGetir(long no) {
		return ilceRepository.findByNo(no);
	}
	
	public void IlceSil (long no) {
		ilceRepository.deleteById(no);
	}
	
	public void IlceKaydet(Ilce ilce) {
		ilceRepository.save(ilce);
	}
	
	public Collection<Ilce> ilNoyaGoreIlceleriGetir(long no) {
		List<Ilce> ilceler = new ArrayList<Ilce>();
		for (Ilce ilce : ilceRepository.findByIlNo(no)) {
			ilceler.add(ilce);
		}
		return ilceler;
	}
	
}
