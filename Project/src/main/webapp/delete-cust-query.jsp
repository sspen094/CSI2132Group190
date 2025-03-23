<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.CustomerInterface" %> 
<%
// get values from the request 
String id = request.getParameter("id"); 
CustomerInterface.delete(id);
// redirect to customer
response.sendRedirect("customer-account.jsp"); %>