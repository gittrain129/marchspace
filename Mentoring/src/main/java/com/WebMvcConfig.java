package com;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;


@Configuration
public class WebMvcConfig implements WebMvcConfigurer{
	
	private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
			"classpath:/static/",
			"classpath:/resources/",
			"classpath:/META-INF/resources"
	};
	
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("forward:/member/login");
	}
	
	 @Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
	      registry.addResourceHandler("/resources/**").addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS);
		
	 }

	  @Bean
	    MappingJackson2JsonView jsonView(){
	        return new MappingJackson2JsonView();
	    }

}
