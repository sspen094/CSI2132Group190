<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.HotelInterface" %> 
<%
// get values from the request 
String number = request.getParameter("number"); 

HotelInterface.delete(number);

// redirect to customer
response.sendRedirect("hotel-modification.jsp"); %>