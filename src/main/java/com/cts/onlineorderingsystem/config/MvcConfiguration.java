package com.cts.onlineorderingsystem.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.cts.onlineorderingsystem.hibernate.domain.Cart;



@Configuration
@ComponentScan(basePackages="com.cts.onlineorderingsystem.controllers/")
@EnableWebMvc
@Import({ HibernateConfig.class })
public class MvcConfiguration extends WebMvcConfigurerAdapter{

	@Bean
	public ViewResolver getViewResolver()
	{
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		
		return resolver;
	}
	

	 @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry)
	 {
		 registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
		 registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	 }
		 

	//@Scope(value = "session",  proxyMode = ScopedProxyMode.TARGET_CLASS)
	@Bean
	public Cart getCart()
	{
		return new Cart();
	}
	
	 @Bean
	 public static PropertySourcesPlaceholderConfigurer propertyConfigInDev() 
	 {
	    return new PropertySourcesPlaceholderConfigurer();
	 }	
	
}
