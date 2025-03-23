<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.EmployeeInterface" %> 
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
String works = request.getParameter("works"); 
String manages = request.getParameter("manages");
if (prevId != ""){
    id = id=="" ? null : id;
    idType = idType=="" ? null : idType;
    fName = fName=="" ? null : fName;
    lName = lName=="" ? null : lName;
    street = street=="" ? null : street;
    city = city=="" ? null : city;
    province = province=="" ? null : province;
    postalCode = postalCode=="" ? null : postalCode;
    works = works=="" ? null : works;
    manages = manages=="" ? null : manages;
    EmployeeInterface.updateIdType(prevId, idType);
    EmployeeInterface.updateFName(prevId, fName);
    EmployeeInterface.updateLName(prevId, lName);
    EmployeeInterface.updateStreet(prevId, street);
    EmployeeInterface.updateCity(prevId, city);
    EmployeeInterface.updateProvince(prevId, province);
    EmployeeInterface.updatePostalCode(prevId, postalCode);
    EmployeeInterface.updateManages(prevId, manages);
    EmployeeInterface.updateWorks(prevId, works);
    EmployeeInterface.updateKey(prevId, id);
}

// redirect to customer
response.sendRedirect("employee-account.jsp"); %>