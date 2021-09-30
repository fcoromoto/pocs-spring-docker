package br.com.fcoromoto.poc.springdocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringDockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringDockerApplication.class, args);
	}

	@GetMapping(path = "/hello")
	public String getHello(){
		System.out.println("Teste");
		return "Hello Tres  \n";
	}

}
