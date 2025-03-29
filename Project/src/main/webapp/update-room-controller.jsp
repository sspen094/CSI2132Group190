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

if (prev_number != "" && hotel != ""){
    number = number=="" ? null : number;
    price = price=="" ? null : price;
    capacity = capacity=="" ? null : capacity;
    view = view=="" ? null : view;
    extendable = extendable=="" ? null : extendable;
    RoomInterface.updatePrice(prev_number, hotel, price);
    RoomInterface.updateCapacity(prev_number, hotel, capacity);
    RoomInterface.updateView(prev_number, hotel, view);
    RoomInterface.updateExtendable(prev_number, hotel, extendable);
    RoomInterface.updateNumber(prev_number, hotel, number);
}
response.sendRedirect("room-modifications.jsp");
%>