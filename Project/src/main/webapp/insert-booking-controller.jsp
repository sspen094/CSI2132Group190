<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.BookingInterface" %>
<%
String start = request.getParameter("start");
String end = request.getParameter("end");
String cust = request.getParameter("cust");
String room = request.getParameter("room");
String hotel = request.getParameter("hotel");

BookingInterface.bookingInsert(start, end, cust, room, hotel);

// redirect back to customer page or confirmation
response.sendRedirect("customer.jsp");
%>
