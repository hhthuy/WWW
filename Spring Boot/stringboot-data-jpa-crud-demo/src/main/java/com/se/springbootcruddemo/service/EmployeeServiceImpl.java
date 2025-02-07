package com.se.springbootcruddemo.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.se.springbootcruddemo.dao.EmpolyeeRepository;
import com.se.springbootcruddemo.entity.Employee;

//Su dung lai cac phuong thuc cua EmpolyeeRepository de cung cap chuc rang cho RestController
@Service
public class EmployeeServiceImpl implements EmployeeService {
	private EmpolyeeRepository empolyeeRepository;

	@Autowired
	public EmployeeServiceImpl(EmpolyeeRepository theEmpolyeeRepository) {
		this.empolyeeRepository = theEmpolyeeRepository;
	}

	@Override
	public List<Employee> findAll() {
		return empolyeeRepository.findAll();
	}

	@Override
	public Employee findById(int theId) {
		Optional<Employee> result = empolyeeRepository.findById(theId);
		Employee theEmployee = null;
		if (result.isPresent()) {
			theEmployee = result.get();
		} else {
			throw new RuntimeException("Did not find employee id - " + theId);
		}
		return theEmployee;

	}

	@Override
	public void save(Employee theEmployee) {
		empolyeeRepository.save(theEmployee);
	}

	@Override
	public void deteleById(int theId) {
		empolyeeRepository.deleteById(theId);
	}

}
