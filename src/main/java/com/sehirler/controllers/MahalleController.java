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

import com.sehirler.models.Mahalle;
import com.sehirler.services.MahalleService;

@Controller
public class MahalleController {

	@Autowired
	private MahalleService mahalleService;
	

	@GetMapping(value = "/mahalleler")
	public String MahalleListele(HttpServletRequest istek) {
		istek.setAttribute("mahalleler", mahalleService.mahalleleriGetir());
		istek.setAttribute("mode", "MAHALLE_LISTELE");
		return "index";
	}
	
	@GetMapping(value = "/mahalleduzenle")
	public String MahalleDuzenle(@RequestParam long no, HttpServletRequest istek) {
		istek.setAttribute("mahalle", mahalleService.mahalleGetir(no));
		istek.setAttribute("mode", "MAHALLE_DUZENLE");
		return "index";
	}
	
	@PostMapping(value = "/mahallekaydet")
	public void MahalleKaydet(@ModelAttribute Mahalle mahalle, HttpServletRequest istek, HttpServletResponse yanit) {
		mahalleService.MahalleKaydet(mahalle);
		try {
			yanit.sendRedirect("/mahalleler");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping(value = "/yenimahalle")
	public String YeniMahalle(HttpServletRequest istek) {
		istek.setAttribute("mode", "MAHALLE_YENI");
		return "index";
	}
	
	@GetMapping(value = "/mahallesil")
	public void MahalleSil(@RequestParam long no, HttpServletResponse yanit) {
		mahalleService.MahalleSil(no);
		try {
			yanit.sendRedirect("/mahalleler");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
