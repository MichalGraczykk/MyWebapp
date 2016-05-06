package com.michaelcompany.models;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transaction")
public class Transaction {

	@Id
	@Column(name = "transaction_id")
	private int transactionId;
	
	@Column(name = "item_id")
	private int itemId;
	
	@Column(name = "user_id")
	private int userId;
	
	private Date od;
	
	@Column(name = "do")
	private Date doo;
	
	@Column(name = "data_tranzakcji")
	private Date dataTranzakcji;
	
	private String status;
	
	private int ilosc;

	
	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getOd() {
		return od;
	}

	public void setOd(Date od) {
		this.od = od;
	}

	public Date getDoo() {
		return doo;
	}

	public void setDoo(Date doo) {
		this.doo = doo;
	}

	public Date getDataTranzakcji() {
		return dataTranzakcji;
	}

	public void setDataTranzakcji(Date dataTranzakcji) {
		this.dataTranzakcji = dataTranzakcji;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getIlosc() {
		return ilosc;
	}

	public void setIlosc(int ilosc) {
		this.ilosc = ilosc;
	}
}
