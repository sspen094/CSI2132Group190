<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.HotelInterface" %> 
<%
// get values from the request 
String name = request.getParameter("name"); 
String number = request.getParameter("number"); 
String email = request.getParameter("email");
String street = request.getParameter("street"); 
String city = request.getParameter("city"); 
String province = request.getParameter("province"); 
String postalCode = request.getParameter("postal");
String category = request.getParameter("category");
if (number != ""){
    name = name=="" ? null : name;
    email = email=="" ? null : email;
    street = street=="" ? null : street;
    city = city=="" ? null : city;
    province = province=="" ? null : province;
    postalCode = postalCode=="" ? null : postalCode;
    category = category=="" ? null : category;
    HotelInterface.updateName(number, name);
    HotelInterface.updateEmail(number, email);
    HotelInterface.updateStreet(number, street);
    HotelInterface.updateCity(number, city);
    HotelInterface.updateProvince(number, province);
    HotelInterface.updatePostalCode(number, postalCode);
    HotelInterface.updateCategory(number, category);
}

// redirect to customer
response.sendRedirect("hotel-modification.jsp"); %>