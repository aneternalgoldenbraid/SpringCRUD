package com.sehirler.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sehirler.models.Ilce;

@Repository
public interface IlceRepository extends CrudRepository<Ilce, Long> {
	public Ilce findByNo(long no);
	public List<Ilce> findByIlNo(long no);
}