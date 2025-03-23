<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.EmployeeInterface" %> 
<%
// get values from the request 
String id = request.getParameter("id"); 
EmployeeInterface.delete(id);
// redirect to customer
response.sendRedirect("employee-account.jsp"); %>