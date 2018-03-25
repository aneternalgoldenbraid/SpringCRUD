package com.sehirler.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sehirler.models.Il;
import com.sehirler.services.IlService;
import com.sehirler.services.IlceService;

@Controller
public class IlController {

	@Autowired
	private IlService ilService;
	@Autowired
	private IlceService ilceService;
	
	@GetMapping(value = "/")
	public String IlListele(HttpServletRequest istek) {
		istek.setAttribute("iller", ilService.illeriGetir());
		istek.setAttribute("mode", "IL_LISTELE");
		return "index";
	}
	
	@GetMapping(value = "/ilduzenle")
	public String IlDuzenle(@RequestParam long no, HttpServletRequest istek) {
		istek.setAttribute("il", ilService.ilGetir(no));
		istek.setAttribute("ilceleri", ilceService.ilNoyaGoreIlceleriGetir(no));
		istek.setAttribute("mode", "IL_DUZENLE");
		return "index";
	}
	
	@PostMapping(value = "/ilkaydet")
	public void IlKaydet(@ModelAttribute Il il, HttpServletRequest istek, HttpServletResponse yanit) {
		ilService.IlKaydet(il);
		try {
			yanit.sendRedirect("/");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping(value = "/yeniil")
	public String YeniIl(HttpServletRequest istek) {
		istek.setAttribute("mode", "IL_YENI");
		return "index";
	}
	
	@GetMapping(value = "/ilsil")
	public void IlSil(@RequestParam long no, HttpServletResponse yanit) {
		ilService.IlSil(no);
		try {
			yanit.sendRedirect("/");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
