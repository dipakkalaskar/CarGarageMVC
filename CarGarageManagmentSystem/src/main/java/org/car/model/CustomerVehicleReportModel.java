package org.car.model;
public class CustomerVehicleReportModel {
    private String customerName;
    private String customerPhone;
    private String customerEmail;
    private String vehicleNumber;
    private String vehicleModel;
    private String vehicleMake;
    private String serviceName;
    private String serviceDescription;
    private double serviceBasePrice;
    private String subServiceName;
    private String subServiceDescription;
    private double subServicePrice;
    private double totalAmount;
    private double discountApplied;
    private double finalAmount;
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public String getVehicleNumber() {
		return vehicleNumber;
	}
	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}
	public String getVehicleModel() {
		return vehicleModel;
	}
	public void setVehicleModel(String vehicleModel) {
		this.vehicleModel = vehicleModel;
	}
	public String getVehicleMake() {
		return vehicleMake;
	}
	public void setVehicleMake(String vehicleMake) {
		this.vehicleMake = vehicleMake;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceDescription() {
		return serviceDescription;
	}
	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}
	public double getServiceBasePrice() {
		return serviceBasePrice;
	}
	public void setServiceBasePrice(double serviceBasePrice) {
		this.serviceBasePrice = serviceBasePrice;
	}
	public String getSubServiceName() {
		return subServiceName;
	}
	public void setSubServiceName(String subServiceName) {
		this.subServiceName = subServiceName;
	}
	public String getSubServiceDescription() {
		return subServiceDescription;
	}
	public void setSubServiceDescription(String subServiceDescription) {
		this.subServiceDescription = subServiceDescription;
	}
	public double getSubServicePrice() {
		return subServicePrice;
	}
	public void setSubServicePrice(double subServicePrice) {
		this.subServicePrice = subServicePrice;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public double getDiscountApplied() {
		return discountApplied;
	}
	public void setDiscountApplied(double discountApplied) {
		this.discountApplied = discountApplied;
	}
	public double getFinalAmount() {
		return finalAmount;
	}
	public void setFinalAmount(double finalAmount) {
		this.finalAmount = finalAmount;
	}
	@Override
	public String toString() {
		return "CustomerVehicleReportModel [customerName=" + customerName + ", customerPhone=" + customerPhone
				+ ", customerEmail=" + customerEmail + ", vehicleNumber=" + vehicleNumber + ", vehicleModel="
				+ vehicleModel + ", vehicleMake=" + vehicleMake + ", serviceName=" + serviceName
				+ ", serviceDescription=" + serviceDescription + ", serviceBasePrice=" + serviceBasePrice
				+ ", subServiceName=" + subServiceName + ", subServiceDescription=" + subServiceDescription
				+ ", subServicePrice=" + subServicePrice + ", totalAmount=" + totalAmount + ", discountApplied="
				+ discountApplied + ", finalAmount=" + finalAmount + "]";
	}

    // Getters and Setters
    
}
