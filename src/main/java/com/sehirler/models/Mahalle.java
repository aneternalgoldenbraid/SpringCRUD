package com.sehirler.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity(name = "mahalleler")
public class Mahalle {

	@Id
	@Column(name = "No")
	private long no;

	@Column(name = "Ad")
	private String ad;
	
	@Column(name = "Ilceno")
	private long ilceNo;

	@Column(name = "Hanesayisi")
	private long haneSayisi;
	
	@Column(name = "Nufus")
	private long nufus;

	@ManyToOne
	private Ilce ilce;

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

	public long getIlceNo() {
		return ilceNo;
	}

	public void setIlceNo(long ilceNo) {
		this.ilceNo = ilceNo;
	}

	public long getHaneSayisi() {
		return haneSayisi;
	}

	public void setHaneSayisi(long haneSayisi) {
		this.haneSayisi = haneSayisi;
	}

	public long getNufus() {
		return nufus;
	}

	public void setNufus(long nufus) {
		this.nufus = nufus;
	}

	public Ilce getIlce() {
		return ilce;
	}

	public void setIlce(Ilce ilce) {
		this.ilce = ilce;
	}

	
}
