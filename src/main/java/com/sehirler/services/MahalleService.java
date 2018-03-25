package com.sehirler.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sehirler.dao.MahalleRepository;
import com.sehirler.models.Mahalle;

@Service
public class MahalleService {

	@Autowired
	private MahalleRepository mahalleRepository;
	
	public Collection<Mahalle> mahalleleriGetir() {
		List<Mahalle> mahalleler = new ArrayList<Mahalle>();
		for (Mahalle mahalle : mahalleRepository.findAll()) {
			mahalleler.add(mahalle);
		}
		return mahalleler;
	}
	
	public Mahalle mahalleGetir(long no) {
		return mahalleRepository.findByNo(no);
	}
	
	public void MahalleSil (long no) {
		mahalleRepository.deleteById(no);
	}
	
	public void MahalleKaydet(Mahalle mahalle) {
		mahalleRepository.save(mahalle);
	}
	
	public Collection<Mahalle> ilceNoyaGoreMahalleleriGetir(long no) {
		List<Mahalle> mahalleler = new ArrayList<Mahalle>();
		for (Mahalle mahalle : mahalleRepository.findByIlceNo(no)) {
			mahalleler.add(mahalle);
		}
		return mahalleler;
	}
	
}
