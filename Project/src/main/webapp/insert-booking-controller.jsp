<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.BookingInterface" %>
<%
  String start = request.getParameter("start");
  String end = request.getParameter("end");
  String cust = request.getParameter("cust");
  String room = request.getParameter("room");
  String hotel = request.getParameter("hotel");

  try {
    BookingInterface.bookingInsert(start, end, cust, room, hotel);
    response.sendRedirect("customer.jsp"); // or show confirmation
  } catch (Exception e) {
    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
  }
%>
