package com.sehirler.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sehirler.models.Il;

@Repository
public interface IlRepository extends CrudRepository<Il, Long> {
	public Il findByNo(long no);
	//public List<Ilce> findByIlceIlNo(long no);
}


