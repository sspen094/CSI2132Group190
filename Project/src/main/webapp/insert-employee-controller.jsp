<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.EmployeeInterface" %> 
<%
// get values from the request 
String id = request.getParameter("id"); 
String idType = request.getParameter("type"); 
String fName = request.getParameter("fname"); 
String lName = request.getParameter("lname");
String street = request.getParameter("street"); 
String city = request.getParameter("city"); 
String province = request.getParameter("province"); 
String postalCode = request.getParameter("postal"); 
String manages = request.getParameter("manages"); 
String works = request.getParameter("works"); 

manages = (manages=="")?null:manages;
EmployeeInterface.employeeInsert(id, idType, fName, lName, street, city, province, postalCode, manages, works);
// redirect to employee
response.sendRedirect("employee.jsp"); %>
