<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.HotelInterface" %> 
<%
// get values from the request 
String name = request.getParameter("name"); 
String email = request.getParameter("email"); 
String street = request.getParameter("street"); 
String city = request.getParameter("city"); 
String province = request.getParameter("province"); 
String postalCode = request.getParameter("postal"); 
String category = request.getParameter("category"); 

HotelInterface.hotelInsert(name, email, street, city, province, postalCode, category);
// redirect to employee
response.sendRedirect("hotel-modification.jsp"); %>