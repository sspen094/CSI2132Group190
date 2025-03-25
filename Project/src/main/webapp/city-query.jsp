<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>

<%
  String city = request.getParameter("city");
  String chain = request.getParameter("chain");
  String category = request.getParameter("category");
  String minRooms = request.getParameter("minRooms");

  String where = "address_city = '" + city + "'";
  if (chain != null && !chain.isEmpty()) {
    where += " AND c_name = '" + chain + "'";
  }
  if (category != null && !category.isEmpty()) {
    where += " AND category = " + category;
  }
  if (minRooms != null && !minRooms.isEmpty()) {
    where += " AND h_building_no IN (SELECT h_building_no FROM room GROUP BY h_building_no HAVING COUNT(*) >= " + minRooms + ")";
  }

  ArrayList<ArrayList<String>> hotels = DBModifier.DBQuery("hotel", "h_building_no, c_name, email, address_street, address_city, address_province, address_postal_code, category", where);
%>

<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Hotel Search</title>
  </head>
  <body>
    <div class="container mt-5">
      <h2>Hotels in <%= city %></h2>

      <form class="row g-3 mb-4" method="GET" action="city-query.jsp">
        <input type="hidden" name="city" value="<%= city %>" />

        <div class="col-md-3">
          <label>Hotel Chain Name</label>
          <input type="text" name="chain" class="form-control" placeholder="Enter hotel chain name" value="<%= chain != null ? chain : "" %>" />
        </div>
        <div class="col-md-2">
          <label>Category</label>
          <input type="number" name="category" class="form-control" placeholder="e.g. 3" value="<%= category != null ? category : "" %>" />
        </div>
        <div class="col-md-2">
          <label>Min Rooms</label>
          <input type="number" name="minRooms" class="form-control" placeholder="e.g. 10" value="<%= minRooms != null ? minRooms : "" %>" />
        </div>

        <div class="col-md-2 d-flex align-items-end">
          <button type="submit" class="btn btn-primary">Filter</button>
        </div>
      </form>

      <% if (hotels == null || hotels.size() <= 1) { %>
        <div class="alert alert-warning">No hotels found matching the criteria.</div>
      <% } else { %>
        <table class="table table-bordered">
          <thead class="table-dark">
            <tr>
              <th>Chain Name</th>
              <th>Email</th>
              <th>Street</th>
              <th>City</th>
              <th>Province</th>
              <th>Postal Code</th>
              <th>Category</th>
              <th>Select</th>
            </tr>
          </thead>
          <tbody>
            <% for (int i = 1; i < hotels.size(); i++) {
              ArrayList<String> h = hotels.get(i); %>
              <tr>
                <td><%= h.get(1) %></td>
                <td><%= h.get(2) %></td>
                <td><%= h.get(3) %></td>
                <td><%= h.get(4) %></td>
                <td><%= h.get(5) %></td>
                <td><%= h.get(6) %></td>
                <td><%= h.get(7) %></td>
                <td>
                  <form action="room-list.jsp" method="GET">
                    <input type="hidden" name="hotel" value="<%= h.get(0) %>">
                    <button type="submit" class="btn btn-sm btn-primary">Select Hotel</button>
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
