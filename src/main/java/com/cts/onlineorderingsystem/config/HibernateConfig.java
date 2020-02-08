package com.cts.onlineorderingsystem.config;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.cts.onlineorderingsystem.hibernate.domain.ItemImage;
import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;
import com.cts.onlineorderingsystem.hibernate.domain.Users;
import com.cts.onlineorderingsystem.utils.CredentialDecryptionUtil;


@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.cts.onlineorderingsystem.config","com.cts.onlineorderingsystem.dao.imp","com.cts.onlineorderingsystem.service.imp"})
@PropertySource("classpath:config/config.properties")
public class HibernateConfig {
	
	
	@Value("${driver.className}")
	String driverClassName;
	@Value("${connection.url}")
	String connectionURL;
	@Value("${connection.userName}")
	String connectionUserName;
	@Value("${connection.password}")
	String connectionPassword;
	@Value("${hibernate.dialect}")
	String hibernateDialect;
	
	@Bean
	public DriverManagerDataSource driverManagerDataSource()
	{
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName(driverClassName);
		ds.setUrl(connectionURL);
		ds.setUsername(CredentialDecryptionUtil.decrypt(connectionUserName));
		ds.setPassword(CredentialDecryptionUtil.decrypt(connectionPassword));
	
		return ds;
	}  
	
	
	@Bean
    public LocalSessionFactoryBean sessionFactory()
	{
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(driverManagerDataSource());
        sessionFactory.setAnnotatedClasses(Users.class,MenuItems.class,ItemImage.class);
        Properties p = new Properties();
		p.put("hibernate.dialect", hibernateDialect);
		p.put("hibernate.show_sql", "true");							
		sessionFactory.setHibernateProperties(p);
        
		return sessionFactory;
     }
	
	@Bean
	@Autowired
	public HibernateTransactionManager hibernateTransactionManager(SessionFactory s)
	{
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(s);
		
		return transactionManager;
	}
	
}
