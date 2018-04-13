package edu.dmacc.spring.cardealer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarController {
	@Autowired CarDao dao;

	@RequestMapping(value = "/form")
	public ModelAndView car() {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("carForm");
		modelAndView.addObject("car", new Car());

		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processCar(Car car) {
		System.out.println("In processCar");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertCar(car);
		System.out.println("Value in getModel " + car.getModel());
		modelAndView.setViewName("carResult");

		modelAndView.addObject("c", car);

		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllCars")
	public ModelAndView viewAll() {
		System.out.println("IN VIEW ALL");
		ModelAndView modelAndView = new ModelAndView();
		List<Car> allCars = dao.getAllCars();
		modelAndView.setViewName("viewAllCars");
		modelAndView.addObject("all", allCars);
		return modelAndView;
		
	}
	@Bean
	public CarDao dao() {
		CarDao bean = new CarDao();
		return bean;
	}
}
