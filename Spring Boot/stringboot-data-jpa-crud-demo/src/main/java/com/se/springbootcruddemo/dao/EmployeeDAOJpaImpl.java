package com.se.springbootcruddemo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.se.springbootcruddemo.entity.Employee;

@Repository
public class EmployeeDAOJpaImpl implements EmployeeDAO {
	private EntityManager entityManager;

	
	@Autowired
	public EmployeeDAOJpaImpl(EntityManager theEntityManager) {
		this.entityManager = theEntityManager;
	}

	@Override
	@Transactional
	public List<Employee> findAll() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Employee> theQuery = currentSession.createQuery("from Employee", Employee.class);
		List<Employee> employees = theQuery.getResultList();

		return employees;
	}

	@Override
	@Transactional
	public Employee findById(int theId) {
		Session currentSession = entityManager.unwrap(Session.class);
		Employee theEmployee = currentSession.get(Employee.class, theId);
		
		return theEmployee;
	}

	@Override
	@Transactional
	public void save(Employee theEmployee) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(theEmployee);
		
	}

	@Override
	@Transactional
	public void deteleById(int theId) {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Employee> theQuery = currentSession.createQuery("delete from Employee where id=:employeeId");
		theQuery.setParameter("employeeId", theQuery);
		theQuery.executeUpdate();
		
	}
	
	
}
