<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.HashMap" %>
<%
  String bookingId = request.getParameter("booking_id");
  String employeeId = request.getParameter("eid");

  if (bookingId != null && employeeId != null && !bookingId.isEmpty() && !employeeId.isEmpty()) {
    HashMap<String, String> rentData = new HashMap<>();
    rentData.put("e_id", employeeId);
    rentData.put("b_id", bookingId);

    DBModifier.DBInsert("renting", rentData);
  }

  // Redirect back to rentings page
  response.sendRedirect("rentings.jsp?eid=" + employeeId);
%>
