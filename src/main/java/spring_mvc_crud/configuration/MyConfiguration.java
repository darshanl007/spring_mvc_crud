package spring_mvc_crud.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan("spring_mvc_crud")
public class MyConfiguration {
	 
//	@Bean
//	ViewResolver get() {
//		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
//		resolver.setPrefix("frontend/");
//		resolver.setSuffix(".jsp");
//		return resolver;
//	}
	
//	@Bean
//	ViewResolver get() {
//	//-------------------------------------------Prefix------Suffix--------------	
//		return new InternalResourceViewResolver("frontend/",".jsp");
//	}
	
	@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("m5").createEntityManager();
	}
}
