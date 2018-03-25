package com.sehirler.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sehirler.models.Mahalle;

@Repository
public interface MahalleRepository extends CrudRepository<Mahalle, Long> {
	public Mahalle findByNo(long no);
	public List<Mahalle> findByIlceNo(long no);
}