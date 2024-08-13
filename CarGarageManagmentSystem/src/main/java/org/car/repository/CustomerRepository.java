package org.car.repository;
import org.car.dbquery.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import org.car.model.CustomerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
@Repository
public class CustomerRepository {
	private List<CustomerModel> list = new ArrayList<CustomerModel>();
	@Autowired
	JdbcTemplate template;
	public boolean isAddCustomer(CustomerModel model) throws SQLException {
		boolean b = false;
		int value=template.update(DbQueries.ADD_CUSTOMER,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, model.getName());
				ps.setString(2, model.getAddress());
				ps.setString(3, model.getPhone());
				ps.setString(4, model.getEmail());
				ps.setInt(5, model.getTotalVisits());
				
			}
			
		});
			
			
//			System.out.println(value);
			if (value>0) {
				b=true;
			}
			else {
				b=false;
			}

		return b;

		
		
		
	}
	@Autowired
	CustomerModel model;
	
	public List<CustomerModel> getAllCustomers() {
	    try {
	        // RowMapper implementation to map each row of the result set to a CustomerModel object
	        RowMapper<CustomerModel> r = new RowMapper<CustomerModel>() {

	            @Override
	            public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	                CustomerModel model = new CustomerModel(); // Initialize the model for each row
	                model.setCustomerID(rs.getInt(1));
	                model.setName(rs.getString(2));
	                model.setAddress(rs.getString(3));
	                model.setPhone(rs.getString(4));
	                model.setEmail(rs.getString(5));
	                model.setTotalVisits(rs.getInt(6));
	                return model;
	            }
	        };

	        // Execute the query and get the list of customers
	        List<CustomerModel> list = template.query(DbQueries.GET_ALL_CUSTOMERS, r);

	        // Return the list if it contains elements, otherwise return null
	        return list.isEmpty() ? null : list;

	    } catch (Exception e) {
	        e.printStackTrace(); // Optional: print the stack trace for debugging
	        return null;
	    }
	}

	
//	public boolean isDeleteCustomer(String name) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.DELETE_CUSTOMER);
//		stmt.setString(1, name);
//		int val=stmt.executeUpdate();
//		
//		
//		
//		return val>0?true:false;
//		
//	}
//	public boolean iscustomerUpdate(int id,String name) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.UPDATE_CUSTOMER_ID);
//		stmt.setInt(1, id);
//		stmt.setString(2, name);
//		int val=stmt.executeUpdate();
//		return val>0?true:false;
//		
//	}
//	public boolean iscustomerUpdate(String newName,String name) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.UPDATE_CUSTOMER_NAME);
//		stmt.setNString(1, newName);
//		stmt.setString(2, name);
//		int val=stmt.executeUpdate();
//		return val>0?true:false;
//		
//	}

}
