package com.michaelcompany.models;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

public interface ItemInterface extends CrudRepository<Item, Serializable>{
	public Item findByItemId(int itemId);
	public Item findByNazwa(String nazwa);
}
