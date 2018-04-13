package edu.dmacc.spring.cardealer;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CarDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("CarRegistration");
	
	public void insertCar(Car carToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(carToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Car> getAllCars() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Car u";
		TypedQuery<Car> typedQuery = em.createQuery(q, Car.class);
		List<Car> all = typedQuery.getResultList();
		return all;
	}
	
}
