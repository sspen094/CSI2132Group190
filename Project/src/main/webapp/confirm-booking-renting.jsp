<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>
<%
  String eid = request.getParameter("eid");
  String room = request.getParameter("room");
  String hotel = request.getParameter("hotel");

  // Used to show confirmation message
  String message = null;
  String error = null;

  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String customerId = request.getParameter("cid");
    String startDate = request.getParameter("start");
    String endDate = request.getParameter("end");

    // Validate fields
    if (customerId != null && startDate != null && endDate != null &&
        !customerId.isEmpty() && !startDate.isEmpty() && !endDate.isEmpty()) {

      // Check for overlap in existing bookings or rentings
      String conflictWhere = "(room_number = '" + room + "' AND h_building_no = '" + hotel + "') AND "
          + "((start_date, end_date) OVERLAPS (DATE '" + startDate + "', DATE '" + endDate + "'))";

      ArrayList<ArrayList<String>> bookingConflicts = DBModifier.DBQuery("booking", "*", conflictWhere);
      ArrayList<ArrayList<String>> rentingConflicts = DBModifier.DBQuery("renting JOIN booking ON renting.b_id = booking.b_id", "booking.*", conflictWhere);

      if (bookingConflicts.size() <= 1 && rentingConflicts.size() <= 1) {
        // Insert new booking
        Map<String, String> bookingMap = new HashMap<>();
        bookingMap.put("start_date", startDate);
        bookingMap.put("end_date", endDate);
        bookingMap.put("c_id", customerId);
        bookingMap.put("room_number", room);
        bookingMap.put("h_building_no", hotel);

        String bookingId = DBModifier.DBInsertWithOutput("booking", bookingMap, "b_id");

        // Insert renting
        Map<String, String> rentingMap = new HashMap<>();
        rentingMap.put("e_id", eid);
        rentingMap.put("b_id", bookingId);

        DBModifier.DBInsert("renting", rentingMap);

        message = "Booking and Renting successfully created for customer " + customerId + ".";
      } else {
        error = "The selected room is already booked or rented during the provided dates.";
      }
    } else {
      error = "All fields are required.";
    }
  }
%>

<html>
<head>
  <title>Confirm Booking and Renting</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-5">
  <h3>Confirm Booking and Renting</h3>

  <% if (message != null) { %>
    <div class="alert alert-success"><%= message %></div>
  <% } %>

  <% if (error != null) { %>
    <div class="alert alert-danger"><%= error %></div>
  <% } %>

  <form method="POST">
    <input type="hidden" name="eid" value="<%= eid %>" />
    <input type="hidden" name="room" value="<%= room %>" />
    <input type="hidden" name="hotel" value="<%= hotel %>" />

    <div class="mb-3">
      <label class="form-label">Customer ID</label>
      <input type="text" class="form-control" name="cid" required />
    </div>

    <div class="mb-3">
      <label class="form-label">Start Date</label>
      <input type="date" class="form-control" name="start" required />
    </div>

    <div class="mb-3">
      <label class="form-label">End Date</label>
      <input type="date" class="form-control" name="end" required />
    </div>

    <button type="submit" class="btn btn-success">Confirm Booking & Renting</button>
  </form>

  <a href="rentings.jsp?eid=<%= eid %>" class="btn btn-secondary mt-3">Back to Rentings</a>
</div>
</body>
</html>
