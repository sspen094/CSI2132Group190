<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.RoomInterface"%> 
<%
// get values from the request 
String number = request.getParameter("number"); 
String hotel = request.getParameter("hotel"); 
    RoomInterface.delete(number, hotel);

    response.sendRedirect("room-modifications.jsp");
%>