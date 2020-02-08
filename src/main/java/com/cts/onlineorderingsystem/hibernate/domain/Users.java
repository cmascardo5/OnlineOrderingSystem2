package com.cts.onlineorderingsystem.hibernate.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="Users")
public class Users {
	
	@SequenceGenerator(name="USER_SEQUENCE", sequenceName="USER_SEQUENCE", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="USER_SEQUENCE")
	@Id
	private int userID;
	@Column(name="Password")
	private String password;
	@Column(name="FirstName")
	private String firstName;
	@Column(name="LastName")
	private String lastName;
	@Column(name="UserEmail")
	private String email;
	@Column(name="LoginStatus")
	private String loginStatus;
	@Column(name="RewardPoints")
	private int rewardPoints;


	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}

	public int getRewardPoints() {
		return rewardPoints;
	}

	public void setRewardPoints(int rewardPoints) {
		this.rewardPoints = rewardPoints;
	}
}