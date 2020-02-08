package com.cts.onlineorderingsystem.hibernate.domain;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Menu_Items")
public class MenuItems {
	
	@Id
	@GeneratedValue
	@Column(name="itemID")
	private int itemID;
	@Column(name="itemType")
	private String itemType;
	@Column(name="itemName")
	private String itemName;
	@Column(name="itemDescription")
	private String itemDescription;
	@Column(name="itemPrice")
	private double itemPrice;
	@Column(name="imageID")
	private int imageID;
	@OneToOne
	@JoinColumn(name="imageID",insertable = false, updatable = false)
	private ItemImage image;
	
	public ItemImage getImage() {
		return image;
	}

	public void setImage(ItemImage images) {
		this.image = images;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public double getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getItemID() {
		return itemID;
	}

	public void setItemID(int itemID) {
		this.itemID = itemID;
	}

	public int getImageID() {
		return imageID;
	}

	public void setImageID(int imageID) {
		this.imageID = imageID;
	}
	
}
