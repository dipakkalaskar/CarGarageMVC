package org.car.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.car.model.CustomerModel;
import org.car.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CustomerService {
	@Autowired
	CustomerRepository customerRepository;
	public boolean isAddCustomer(CustomerModel model) throws SQLException {
//		System.out.println("Hii");
//		System.out.println(customerRepository.isAddCustomer(model));
		return customerRepository.isAddCustomer(model);
		
	}
	public List<CustomerModel> GetAllCustomers(){
//		List ls = new ArrayList<CustomerModel>();
//		ls = customerRepository.getAllCustomers();
		return customerRepository.getAllCustomers();
		
	}
//	public boolean isDeleteCustomer(String name) throws SQLException {
//		return customerRepository.isDeleteCustomer(name);
//		
//	}
//	public boolean isCustomerUpdate(int id,String name) throws SQLException {
//		return customerRepository.iscustomerUpdate(id,name);
//		
//	}
//	public boolean isCustomerUpdate(String newName,String name) throws SQLException {
//		return customerRepository.iscustomerUpdate(newName,name);
//		
//	}
}
