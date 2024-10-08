package spring_mvc_crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring_mvc_crud.dto.Student;

@Repository
public class Studentdao {

//	EntityManagerFactory factory = Persistence.createEntityManagerFactory("m5");
//	EntityManager manager = factory.createEntityManager();
	
	@Autowired
	EntityManager manager;

	public void save(Student student) {
		manager.getTransaction().begin();
		manager.persist(student);
		manager.getTransaction().commit();

	}

	public List<Student> fetchAll() {
		return manager.createQuery("select x from Student x").getResultList();
	}

	public Student find(int id) {
		return manager.find(Student.class, id);
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		manager.remove(find(id));
		manager.getTransaction().commit();
	}

	public void update(Student student) {
		manager.getTransaction().begin();
		manager.merge(student);
		manager.getTransaction().commit();
	}
}
