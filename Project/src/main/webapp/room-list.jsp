<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>

<%
String hotelId = request.getParameter("hotel");
String start = request.getParameter("start");
String end = request.getParameter("end");
String capacity = request.getParameter("capacity");
String price = request.getParameter("price");

ArrayList<ArrayList<String>> hotelInfo = DBModifier.DBQuery("hotel", "c_name, address_city", "h_building_no = '" + hotelId + "'");
String hotelName = hotelInfo.size() > 1 ? hotelInfo.get(1).get(0) : "";
String hotelCity = hotelInfo.size() > 1 ? hotelInfo.get(1).get(1) : "";

String where = "h_building_no = '" + hotelId + "'";
if (capacity != null && !capacity.isEmpty()) {
  where += " AND capacity >= " + capacity;
}
if (price != null && !price.isEmpty()) {
  where += " AND price <= " + price;
}
if (start != null && end != null && !start.isEmpty() && !end.isEmpty()) {
  where += " AND (room_number, h_building_no) NOT IN ("
        + "SELECT room_number, h_building_no FROM Booking "
        + "WHERE NOT (end_date < '" + start + "' OR start_date > '" + end + "')"
        + ")";
}

ArrayList<ArrayList<String>> rooms = DBModifier.DBQuery("room", "room_number, price, capacity, view_type, extendable", where);
%>

<html>
  <head>
    <title>Rooms in Hotel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container mt-5">
      <h2>Rooms at <%= hotelName %> in <%= hotelCity %></h2>

      <form class="row g-3 mb-4" method="GET" action="room-list.jsp">
        <input type="hidden" name="hotel" value="<%= hotelId %>" />

        <div class="col-md-3">
          <label>Start Date</label>
          <input type="date" name="start" class="form-control" value="<%= start != null ? start : "" %>">
        </div>
        <div class="col-md-3">
          <label>End Date</label>
          <input type="date" name="end" class="form-control" value="<%= end != null ? end : "" %>">
        </div>
        <div class="col-md-2">
          <label>Min Capacity</label>
          <input type="number" name="capacity" class="form-control" value="<%= capacity != null ? capacity : "" %>">
        </div>
        <div class="col-md-2">
          <label>Max Price</label>
          <input type="number" name="price" class="form-control" value="<%= price != null ? price : "" %>">
        </div>
        <div class="col-md-2 d-flex align-items-end">
          <button type="submit" class="btn btn-primary">Filter</button>
        </div>
      </form>

      <% if (rooms == null || rooms.size() <= 1) { %>
        <div class="alert alert-warning">No rooms found matching the criteria.</div>
      <% } else { %>
        <table class="table table-bordered">
          <thead class="table-dark">
            <tr>
              <th>Room #</th>
              <th>Price</th>
              <th>Capacity</th>
              <th>View</th>
              <th>Extendable</th>
              <th>Book</th>
            </tr>
          </thead>
          <tbody>
            <% for (int i = 1; i < rooms.size(); i++) {
                ArrayList<String> r = rooms.get(i); %>
              <tr>
                <td><%= r.get(0) %></td>
                <td><%= r.get(1) %></td>
                <td><%= r.get(2) %></td>
                <td><%= r.get(3) %></td>
                <td><%= r.get(4) %></td>
                <td>
                  <form action="bookings.jsp" method="GET">
                    <input type="hidden" name="room" value="<%= r.get(0) %>">
                    <input type="hidden" name="hotel" value="<%= hotelId %>">
                    <input type="hidden" name="start" value="<%= start %>">
                    <input type="hidden" name="end" value="<%= end %>">
                    <button class="btn btn-sm btn-success">Book</button>
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
