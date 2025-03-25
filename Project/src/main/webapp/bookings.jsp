<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<html>
  <head>
    <title>Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
      <h2>Create Booking</h2>
      <form action="insert-booking-controller.jsp" method="POST">
        <input type="hidden" name="hotel" value="<%= request.getParameter("hotel") %>" />

        <div class="mb-3">
          <label for="room">Room Number</label>
          <input type="text" class="form-control" name="room" required>
        </div>
        <div class="mb-3">
          <label for="cust">Customer ID</label>
          <input type="text" class="form-control" name="cust" required>
        </div>
        <div class="mb-3">
          <label for="start">Start Date</label>
          <input type="date" class="form-control" name="start" required>
        </div>
        <div class="mb-3">
          <label for="end">End Date</label>
          <input type="date" class="form-control" name="end" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit Booking</button>
      </form>
    </div>
  </body>
</html>
