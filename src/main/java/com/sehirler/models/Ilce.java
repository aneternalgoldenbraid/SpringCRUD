package com.sehirler.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity(name = "ilceler")
public class Ilce {

	@Id
	@Column(name = "No")
	private long no;

	@Column(name = "Ad")
	private String ad;
	
	@Column(name = "Ilno")
	private long ilNo;

	@Column(name = "Nufus")
	private long nufus;

	@ManyToOne
	private Il il;
	
	public Il getIl() {
		return il;
	}

	public void setIl(Il il) {
		this.il = il;
	}

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

	public long getIlNo() {
		return ilNo;
	}

	public void setIlNo(long ilNo) {
		this.ilNo = ilNo;
	}

	public long getNufus() {
		return nufus;
	}

	public void setNufus(long nufus) {
		this.nufus = nufus;
	}

}
