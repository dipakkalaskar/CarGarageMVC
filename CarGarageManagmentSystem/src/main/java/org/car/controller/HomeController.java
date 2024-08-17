package org.car.controller;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resources;

import org.car.model.CustomerModel;
import org.car.model.LoginModel;
import org.car.service.CustomerService;
import org.car.service.ValidateUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
@RequestMapping("/")
public String homePage() {
	return "indexcust";
}
@RequestMapping("/login")
public String LoginPage() {
	return "index";
}

@Autowired
ValidateUserService validService;
@RequestMapping("wel")
public String getWelcome(LoginModel model) {
	validService.isValidateUser(model);
	if(model.getLoginType().equals("super admin")) {
		return "superadmindashjsp";
	}
	else if(model.getLoginType().equals("customer")) {
		return "indexcust";
	}
	else {
		return "index";
	}
	
	
}
@Autowired
CustomerService custService;
@RequestMapping("save")
public String saveCust(CustomerModel model,Map msg) throws SQLException {
	boolean b=custService.isAddCustomer(model);
	if(b) {
		msg.put("msg", "Customer Added....");
	}
	else {
		msg.put("msg","Customer Not Added...");
	}
	return "superadmindashjsp";
	
}
@RequestMapping("/viewCustomer")
public String getAllDepartment(Map map) {
	List<CustomerModel> list=this.custService.GetAllCustomers();
	map.put("custList", list);
	return "superadmindashjsp";
//	return "viewCust";
	
}
@RequestMapping("deleteCustById")
public String deleteEmployeeById(@RequestParam("custid") Integer custid, Map map) throws SQLException {
	System.out.println("Cust id is"+custid);
	boolean b=custService.isDeleteCustomer(custid);
	List<CustomerModel> list=this.custService.GetAllCustomers();
	map.put("custList", list);
	return "superadmindashjsp";
}
}
