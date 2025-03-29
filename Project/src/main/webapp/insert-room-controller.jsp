<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.RoomInterface"%> 
<%
// get values from the request 
String prev_number = request.getParameter("prev-number"); 
String number = request.getParameter("number"); 
String hotel = request.getParameter("hotel"); 
String price = request.getParameter("price"); 
String capacity = request.getParameter("capacity");
String view = request.getParameter("view"); 
String extendable = request.getParameter("extendable"); 
view = view=="" ? null : view;
RoomInterface.roomInsert(number, hotel, price, capacity, view, extendable);

// redirect to customer
response.sendRedirect("room-modifications.jsp"); %>
