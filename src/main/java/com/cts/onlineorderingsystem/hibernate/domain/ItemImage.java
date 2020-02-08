package com.cts.onlineorderingsystem.hibernate.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="images")
public class ItemImage {
	
	@Id
	private int imageID;
	
	@Column(name="imagePath")
	private String imagePath;
	
	@Column(name="imageDetails")
	private String imageDetails;

	public int getImageID() {
		return imageID;
	}

	public void setImageID(int imageID) {
		this.imageID = imageID;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getImageDetails() {
		return imageDetails;
	}

	public void setImageDetails(String imageDetails) {
		this.imageDetails = imageDetails;
	}

}
