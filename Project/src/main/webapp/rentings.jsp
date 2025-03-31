<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>

<%
  String eid = request.getParameter("eid");
  String hotelId = "";

  if (eid != null) {
    ArrayList<ArrayList<String>> empData = DBModifier.DBQuery("employee", "works_for_hotel", "e_id = '" + eid + "'");
    if (empData.size() > 1) {
      hotelId = empData.get(1).get(0);
    }
  }

  String start = request.getParameter("start");
  String end = request.getParameter("end");
  String capacity = request.getParameter("capacity");
  String price = request.getParameter("price");

  String whereClause = "h_building_no = '" + hotelId + "' AND b_id NOT IN (SELECT b_id FROM renting)";
  if (start != null && !start.isEmpty()) whereClause += " AND start_date >= '" + start + "'";
  if (end != null && !end.isEmpty()) whereClause += " AND end_date <= '" + end + "'";
  if (capacity != null && !capacity.isEmpty()) whereClause += " AND room_number IN (SELECT room_number FROM room WHERE capacity = '" + capacity + "' AND h_building_no = '" + hotelId + "')";
  if (price != null && !price.isEmpty()) whereClause += " AND room_number IN (SELECT room_number FROM room WHERE price <= '" + price + "' AND h_building_no = '" + hotelId + "')";

  ArrayList<ArrayList<String>> bookings = hotelId.isEmpty() ? new ArrayList<>() : DBModifier.DBQuery(
    "booking",
    "b_id, c_id, room_number, h_building_no, start_date, end_date",
    whereClause
  );
%>

<html>
<head>
  <title>Pending Bookings for Renting</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h2>Pending Bookings for Renting</h2>

  <form class="row g-3" method="GET" action="rentings.jsp">
    <input type="hidden" name="eid" value="<%= eid %>" />
    <div class="col-md-3">
      <label for="start" class="form-label">Start Date</label>
      <input type="date" class="form-control" name="start" value="<%= start != null ? start : "" %>" />
    </div>
    <div class="col-md-3">
      <label for="end" class="form-label">End Date</label>
      <input type="date" class="form-control" name="end" value="<%= end != null ? end : "" %>" />
    </div>
    <div class="col-md-3">
      <label for="capacity" class="form-label">Room Capacity</label>
      <input type="number" class="form-control" name="capacity" value="<%= capacity != null ? capacity : "" %>" />
    </div>
    <div class="col-md-3">
      <label for="price" class="form-label">Max Room Price</label>
      <input type="number" step="0.01" class="form-control" name="price" value="<%= price != null ? price : "" %>" />
    </div>
    <div class="col-md-12">
      <button class="btn btn-primary mt-3">Apply Filters</button>
    </div>
  </form>

  <hr>

  <% if (bookings == null || bookings.size() <= 1) { %>
    <div class="alert alert-info">No pending bookings match the criteria.</div>
  <% } else { %>
    <table class="table table-bordered mt-4">
      <thead class="table-dark">
        <tr>
          <th>Booking ID</th>
          <th>Customer ID</th>
          <th>Room #</th>
          <th>Hotel ID</th>
          <th>Start Date</th>
          <th>End Date</th>
          <th>Convert</th>
        </tr>
      </thead>
      <tbody>
      <% for (int i = 1; i < bookings.size(); i++) {
          ArrayList<String> b = bookings.get(i); %>
        <tr>
          <td><%= b.get(0) %></td>
          <td><%= b.get(1) %></td>
          <td><%= b.get(2) %></td>
          <td><%= b.get(3) %></td>
          <td><%= b.get(4) %></td>
          <td><%= b.get(5) %></td>
          <td>
            <form action="insert-renting-controller.jsp" method="POST">
              <input type="hidden" name="booking_id" value="<%= b.get(0) %>" />
              <input type="hidden" name="eid" value="<%= eid %>" />
              <button class="btn btn-sm btn-success">Convert</button>
            </form>
          </td>
        </tr>
      <% } %>
      </tbody>
    </table>
  <% } %>

  <!-- 👇 New button to create booking + renting directly -->
  <form action="create-booking-renting.jsp" method="GET">
    <input type="hidden" name="eid" value="<%= eid %>" />
    <button type="submit" class="btn btn-secondary mt-4">Create Booking/Renting</button>
  </form>

</div>
  <!-- includes payment portion -->

<jsp:include page="submit_payment.jsp" />

</body>
</html>
