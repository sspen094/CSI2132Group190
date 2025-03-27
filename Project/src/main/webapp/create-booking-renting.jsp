<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>
<%
  String eid = request.getParameter("eid");
  String hotelId = "";

  if (eid != null && !eid.isEmpty()) {
    ArrayList<ArrayList<String>> empData = DBModifier.DBQuery("employee", "works_for_hotel", "e_id = '" + eid + "'");
    if (empData.size() > 1) {
      hotelId = empData.get(1).get(0);
    }
  }

  String capacity = request.getParameter("capacity");
  String price = request.getParameter("price");

  String whereClause = "h_building_no = '" + hotelId + "'";
  if (capacity != null && !capacity.isEmpty()) {
    whereClause += " AND capacity = '" + capacity + "'";
  }
  if (price != null && !price.isEmpty()) {
    whereClause += " AND price <= '" + price + "'";
  }

  ArrayList<ArrayList<String>> rooms = hotelId.isEmpty() ? new ArrayList<>() : DBModifier.DBQuery(
    "room",
    "room_number, price, capacity",
    whereClause
  );
%>

<html>
<head>
  <title>Create Booking or Renting</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h2>All Rooms in Your Hotel (Create Booking/Renting)</h2>

  <form class="row g-3" method="GET" action="create-booking-renting.jsp">
    <input type="hidden" name="eid" value="<%= eid %>" />
    <div class="col-md-4">
      <label for="capacity" class="form-label">Room Capacity</label>
      <input type="number" class="form-control" name="capacity" value="<%= capacity != null ? capacity : "" %>" />
    </div>
    <div class="col-md-4">
      <label for="price" class="form-label">Max Price</label>
      <input type="number" step="0.01" class="form-control" name="price" value="<%= price != null ? price : "" %>" />
    </div>
    <div class="col-md-4">
      <label class="form-label d-block">&nbsp;</label>
      <button class="btn btn-primary">Apply Filters</button>
    </div>
  </form>

  <hr>

  <% if (rooms == null || rooms.size() <= 1) { %>
    <div class="alert alert-info">No rooms found matching the criteria.</div>
  <% } else { %>
    <table class="table table-bordered mt-4">
      <thead class="table-dark">
        <tr>
          <th>Room #</th>
          <th>Price</th>
          <th>Capacity</th>
          <th>Book/Rent</th>
        </tr>
      </thead>
      <tbody>
      <% for (int i = 1; i < rooms.size(); i++) {
          ArrayList<String> r = rooms.get(i); %>
        <tr>
          <td><%= r.get(0) %></td>
          <td>$<%= r.get(1) %></td>
          <td><%= r.get(2) %></td>
          <td>
            <form action="confirm-booking-renting.jsp" method="GET">
              <input type="hidden" name="eid" value="<%= eid %>" />
              <input type="hidden" name="room" value="<%= r.get(0) %>" />
              <input type="hidden" name="hotel" value="<%= hotelId %>" />
              <button class="btn btn-sm btn-success">Book/Rent</button>
            </form>
          </td>
        </tr>
      <% } %>
      </tbody>
    </table>
  <% } %>
</div>
</body>
</html>
