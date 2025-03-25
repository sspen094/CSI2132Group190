<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Book a Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  </head>
  <body>
    <div class="container mt-5">
      <h2>Book Room <%= request.getParameter("room") %> at Hotel <%= request.getParameter("hotel") %></h2>
      <form action="insert-booking-controller.jsp" method="POST">
        <!-- Hidden values for booking -->
        <input type="hidden" name="room" value="<%= request.getParameter("room") %>">
        <input type="hidden" name="hotel" value="<%= request.getParameter("hotel") %>">

        <!-- Input values -->
        <div class="mb-3">
          <label>Customer ID</label>
          <input type="text" name="cust" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>Start Date</label>
          <input type="date" name="start" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>End Date</label>
          <input type="date" name="end" class="form-control" required />
        </div>

        <button type="submit" class="btn btn-primary">Submit Booking</button>
      </form>
    </div>
  </body>
</html>
