package com.michaelcompany.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@Column(name="user_id")
	private int userId;
	
	@NotEmpty
	private String login;
	
	@Size(min=1,max=10)
	private String haslo;

	private String imie;

	private String nazwisko;

	private String ulica;
	
	@Column(name="nr_domu")
	private String nrDomu;
	
	@Column(name="nr_lokalu")
	private int nrLokalu;

	private int wiek;

	private String rola;
	
	private Boolean stan;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getHaslo() {
		return haslo;
	}

	public void setHaslo(String haslo) {
		this.haslo = haslo;
	}

	public String getImie() {
		return imie;
	}

	public void setImie(String imie) {
		this.imie = imie;
	}

	public String getNazwisko() {
		return nazwisko;
	}

	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}

	public String getUlica() {
		return ulica;
	}

	public void setUlica(String ulica) {
		this.ulica = ulica;
	}

	public String getNrDomu() {
		return nrDomu;
	}

	public void setNrDomu(String nrDomu) {
		this.nrDomu = nrDomu;
	}

	public int getNrLokalu() {
		return nrLokalu;
	}

	public void setNrLokalu(int nrLokalu) {
		this.nrLokalu = nrLokalu;
	}

	public int getWiek() {
		return wiek;
	}

	public void setWiek(int wiek) {
		this.wiek = wiek;
	}

	public String getRola() {
		return rola;
	}

	public void setRola(String rola) {
		this.rola = rola;
	}

	public Boolean getStan() {
		return stan;
	}

	public void setStan(Boolean stan) {
		this.stan = stan;
	}
}
