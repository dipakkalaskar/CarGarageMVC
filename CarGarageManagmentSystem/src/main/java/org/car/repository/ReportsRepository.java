package org.car.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.car.model.CustomerVehicleReportModel;
import org.car.model.MonthlyIncomeModel;
import org.car.model.VehicleReportModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ReportsRepository {
	@Autowired
	JdbcTemplate template;
	
	public List<VehicleReportModel> getMonthlyVehicleReport(int month, int year) {
        String sql = "SELECT v.VehicleID, v.VehicleNumber, v.Model, v.Make, v.Year, " +
                     "c.Name AS CustomerName, c.Phone AS CustomerPhone, " +
                     "s.servicingID, s.serviceDate, s.totalPrice " +
                     "FROM servicing s " +
                     "JOIN vehicle v ON s.vehicleID = v.VehicleID " +
                     "JOIN customer c ON v.CustomerID = c.CustomerID " +
                     "WHERE YEAR(s.serviceDate) = ? AND MONTH(s.serviceDate) = ? " +
                     "ORDER BY s.serviceDate DESC";

        return template.query(sql, new Object[]{year, month}, new RowMapper<VehicleReportModel>() {
            @Override
            public VehicleReportModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                VehicleReportModel report = new VehicleReportModel();
                report.setVehicleID(rs.getInt("VehicleID"));
                report.setVehicleNumber(rs.getString("VehicleNumber"));
                report.setModel(rs.getString("Model"));
                report.setMake(rs.getString("Make"));
                report.setYear(rs.getInt("Year"));
                report.setCustomerName(rs.getString("CustomerName"));
                report.setCustomerPhone(rs.getString("CustomerPhone"));
                report.setServicingID(rs.getInt("servicingID"));
                report.setServiceDate(rs.getString("serviceDate"));
                report.setTotalPrice(rs.getDouble("totalPrice"));
                return report;
            }
        });
    }
	public MonthlyIncomeModel getMonthlyIncome(int month, int year) {
        String sql = "SELECT SUM(b.finalamount) AS total_income " +
                     "FROM bill b " +
                     "INNER JOIN servicing s ON b.servicingid = s.servicingid " +
                     "WHERE MONTH(b.billdate) = ? AND YEAR(b.billdate) = ?";
        Double totalIncome = template.queryForObject(sql, new Object[]{month, year}, Double.class);

        return new MonthlyIncomeModel(totalIncome != null ? totalIncome : 0.0);
    }
	public List<CustomerVehicleReportModel> fetchReportByCustomerId(String customerName) {
        String sql = "SELECT c.name AS customerName, c.phone AS customerPhone, c.email AS customerEmail, " +
                "v.vehiclenumber AS vehicleNumber, v.model AS vehicleModel, v.make AS vehicleMake, " +
                "se.servicename AS serviceName, se.servicedescription AS serviceDescription, " +
                "se.baseprice AS serviceBasePrice, ss.subservicename AS subServiceName, " +
                "ss.subservicedescription AS subServiceDescription, ss.subserviceprice AS subServicePrice, " +
                "b.totalamount, b.discountapplied, b.finalamount " +
                "FROM customer c " +
                "INNER JOIN vehicle v ON c.customerid = v.customerid " +
                "INNER JOIN servicing s ON v.vehicleid = s.vehicleid " +
                "INNER JOIN bill b ON s.servicingid = b.servicingid " +
                "INNER JOIN service se ON s.serviceid = se.serviceid " +
                "INNER JOIN subservice ss ON s.subserviceid = ss.subserviceid " +
                "WHERE c.name = ? " +
                "ORDER BY s.servicedate ASC";

        return template.query(sql, new Object[]{customerName}, new RowMapper<CustomerVehicleReportModel>() {
            @Override
            public CustomerVehicleReportModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                CustomerVehicleReportModel report = new CustomerVehicleReportModel();
                report.setCustomerName(rs.getString("customerName"));
                report.setCustomerPhone(rs.getString("customerPhone"));
                report.setCustomerEmail(rs.getString("customerEmail"));
                report.setVehicleNumber(rs.getString("vehicleNumber"));
                report.setVehicleModel(rs.getString("vehicleModel"));
                report.setVehicleMake(rs.getString("vehicleMake"));
                report.setServiceName(rs.getString("serviceName"));
                report.setServiceDescription(rs.getString("serviceDescription"));
                report.setServiceBasePrice(rs.getDouble("serviceBasePrice"));
                report.setSubServiceName(rs.getString("subServiceName"));
                report.setSubServiceDescription(rs.getString("subServiceDescription"));
                report.setSubServicePrice(rs.getDouble("subServicePrice"));
                report.setTotalAmount(rs.getDouble("totalamount"));
                report.setDiscountApplied(rs.getDouble("discountapplied"));
                report.setFinalAmount(rs.getDouble("finalamount"));
                return report;
            }
        });
    }


}
