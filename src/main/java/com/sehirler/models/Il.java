package com.sehirler.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity(name = "iller")
public class Il {
	
	@Id
	@Column(name = "No")
	private long no;
	
	@Column(name = "Ad")
	private String ad;
	
	@Column(name = "Bolge")
	private String bolge;
	
	@Column(name = "Nufus")
	private long nufus;
	
	//@OneToMany
	//private Collection<Ilce> ilce = new ArrayList<Ilce>();

	//public Collection<Ilce> getIlce() {
	//	return ilce;
	//}

	//public void setIlce(Collection<Ilce> ilce) {
	//	this.ilce = ilce;
	//}

	public long getNo() {
		return no;
	}

	public void setNo(long no) {
		this.no = no;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getBolge() {
		return bolge;
	}

	public void setBolge(String bolge) {
		this.bolge = bolge;
	}

	public long getNufus() {
		return nufus;
	}

	public void setNufus(long nufus) {
		this.nufus = nufus;
	}
	
}
