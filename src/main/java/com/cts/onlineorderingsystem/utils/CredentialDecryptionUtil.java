package com.cts.onlineorderingsystem.utils;

import org.jasypt.util.text.BasicTextEncryptor;

public class CredentialDecryptionUtil {
	
	static BasicTextEncryptor encryptor = null;
	static
	{
		encryptor = new BasicTextEncryptor();
		encryptor.setPassword("ZAIN");
	}
	
	public static String encrypt(String password)
	{
		return encryptor.encrypt(password);
	}
	
	public static String decrypt(String password)
	{
		return encryptor.decrypt(password);
	}

}
