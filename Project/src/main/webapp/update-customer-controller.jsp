<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.CustomerInterface" %> 
<%
// get values from the request 
String prevId = request.getParameter("prev_id");
String id = request.getParameter("id"); 
String idType = request.getParameter("type"); 
String fName = request.getParameter("fname"); 
String lName = request.getParameter("lname");
String street = request.getParameter("street"); 
String city = request.getParameter("city"); 
String province = request.getParameter("province"); 
String postalCode = request.getParameter("postal");
if (prevId != ""){
    id = id=="" ? null : id;
    idType = idType=="" ? null : idType;
    fName = fName=="" ? null : fName;
    lName = lName=="" ? null : lName;
    street = street=="" ? null : street;
    city = city=="" ? null : city;
    province = province=="" ? null : province;
    postalCode = postalCode=="" ? null : postalCode;
    CustomerInterface.updateIdType(prevId, idType);
    CustomerInterface.updateFName(prevId, fName);
    CustomerInterface.updateLName(prevId, lName);
    CustomerInterface.updateStreet(prevId, street);
    CustomerInterface.updateCity(prevId, city);
    CustomerInterface.updateProvince(prevId, province);
    CustomerInterface.updatePostalCode(prevId, postalCode);
    CustomerInterface.updateKey(prevId, id);
}

// redirect to customer
response.sendRedirect("customer-account.jsp"); %>