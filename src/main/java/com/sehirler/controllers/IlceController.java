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

import com.sehirler.models.Ilce;
import com.sehirler.services.IlceService;
import com.sehirler.services.MahalleService;

@Controller
public class IlceController {

	@Autowired
	private IlceService ilceService;
	@Autowired
	private MahalleService mahalleService;
	

	@GetMapping(value = "/ilceler")
	public String IlceListele(HttpServletRequest istek) {
		istek.setAttribute("ilceler", ilceService.ilceleriGetir());
		istek.setAttribute("mode", "ILCE_LISTELE");
		return "index";
	}
	
	@GetMapping(value = "/ilceduzenle")
	public String IlceDuzenle(@RequestParam long no, HttpServletRequest istek) {
		istek.setAttribute("ilce", ilceService.ilceGetir(no));
		istek.setAttribute("mahalleleri", mahalleService.ilceNoyaGoreMahalleleriGetir(no));
		istek.setAttribute("mode", "ILCE_DUZENLE");
		return "index";
	}
	
	@PostMapping(value = "/ilcekaydet")
	public void IlceKaydet(@ModelAttribute Ilce ilce, HttpServletRequest istek, HttpServletResponse yanit) {
		ilceService.IlceKaydet(ilce);
		try {
			yanit.sendRedirect("/ilceler");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping(value = "/yeniilce")
	public String YeniIlce(HttpServletRequest istek) {
		istek.setAttribute("mode", "ILCE_YENI");
		return "index";
	}
	
	@GetMapping(value = "/ilcesil")
	public void IlceSil(@RequestParam long no, HttpServletResponse yanit) {
		ilceService.IlceSil(no);
		try {
			yanit.sendRedirect("/ilceler");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
