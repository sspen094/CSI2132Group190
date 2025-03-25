<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page import="java.util.*" %>

<%
String hotelId = request.getParameter("hotel");
ArrayList<ArrayList<String>> rooms = DBModifier.DBQuery(
    "room",
    "room_number, price, capacity, view_type, extendable",
    "h_building_no = '" + hotelId + "'"
);
%>

<html>
  <head>
    <title>Rooms in Hotel</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container mt-5">
      <h2>Rooms in Hotel ID: <%= hotelId %></h2>
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
                  <button type="submit" class="btn btn-sm btn-success">Book</button>
                </form>
              </td>
            </tr>
          <% } %>
        </tbody>
      </table>
    </div>
  </body>
</html>
