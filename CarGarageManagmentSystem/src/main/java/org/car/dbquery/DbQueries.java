package org.car.dbquery;

public class DbQueries {
	public static final String ADD_CUSTOMER = "insert into customer values('0',?,?,?,?,?,?,?)";
	public static final String GET_ALL_SUBSERVICES =" select * from subservice";
	public static final String GET_ALL_CUSTOMERS = "select * from customer";
	public static final String DELETE_CUSTOMER = "delete from customer where customerid=?";
	public static final String UPDATE_CUSTOMER_ID = "update customer set id=? where name=?";
	public static final String UPDATE_CUSTOMER_NAME = "update customer set name=? where name=?";
	public static final String ADD_SERVICE = "insert into service values('0',?,?,?)";
	public static final String GET_ALL_SERVICES = "select * from service";
	public static final String DELETE_SERVICE = "delete from service where serviceid=?";
	public static final String GET_SERVICE_PRICE_STRING = "select baseprice from service where serviceid=?";
	public static final String GET_SERVICING_PRICE_STRING = "select TotalPrice from servicing where servicingid=?";
	public static final String GET_ACCESSORY_PRICE_STRING = "select Price from accessories where accessories_id=?";
	public static final String GET_VEHICLEID_STRING = "select VehicleID from servicing where servicingid=?";
	public static final String GET_CUSTID_STRING = "select CustomerID from vehicle where VehicleID=?";
	public static final String GET_TOTAL_VISITS_STRING = "select TotalVisits from CUSTOMER where CustomerID=?";
	public static final String ADD_BILL = "insert into bill values('0',?,?,?,?,?)";
	public static final String VIEW_BILL_STRING ="select * from bill where billid=?";
	public static final String LOGIN_ADMIN = " select * from login where username=? and password=?";
	public static final String ADD_VEHICLE = "insert into vehicle values('0',?,?,?,?,?)";
	public static final String GET_VEHICLE_CUST ="select * from vehicle where customerid=?";
	public static final String ADD_SERVICING = "insert into servicing values('0',?,?,?,?,?,?,'pending')";
	public static final String GET_ALL_ACCESSORIES = "select * from accessories";
	public static final String GET_ALL_SERVICEING_DETAILS_OF_CUSTOMER = " select c.customerid , c.name ,s.servicingid,s.totalprice,v.vehicleid from customer c inner join vehicle v on c.customerid=v.customerid inner join servicing s on v.vehicleid=s.vehicleid where c.customerid=?;";
	public static final String GET_ALL_SERVICEING_DETAILS_OF_CUSTOMER_NOTIFICATION = " select c.customerid , c.name ,s.servicingid,s.totalprice,v.vehicleid from customer c inner join vehicle v on c.customerid=v.customerid inner join servicing s on v.vehicleid=s.vehicleid where s.status=?;";
	public static final String GET_BILL =" select c.name,c.phone,c.email,v.vehiclenumber,v.model,v.make,s.servicedate,se.servicename,se.servicedescription,se.baseprice,ss.subservicename,ss.subservicedescription,ss.subserviceprice,b.billdate,b.totalamount,b.discountapplied,b.finalamount from customer c inner join vehicle v on c.customerid=v.customerid inner join servicing s on v.vehicleid=s.vehicleid inner join bill b on s.servicingid=b.servicingid inner join service se on s.serviceid=se.serviceid inner join subservice ss on ss.subserviceid=s.subserviceid where c.customerid = ? order by s.servicedate desc limit 1 offset 1";
	
	
}
