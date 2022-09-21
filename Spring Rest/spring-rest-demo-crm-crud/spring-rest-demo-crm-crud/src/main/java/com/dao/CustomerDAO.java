package com.dao;

import java.util.List;

import com.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();
	public Customer getCustomers(int id);
	public Customer addCustomer(Customer customer);
	public Customer updateCustomer(int id,Customer customer);
	public void deleteCustomer(int id);
}
