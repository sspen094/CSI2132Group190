<html>
  <head>
    <title>Enter Employee ID</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container mt-5">
      <h3>Enter Employee ID to View Bookings for Renting</h3>
      <form action="rentings.jsp" method="GET">
        <div class="mb-3">
          <label for="eid" class="form-label">Employee ID</label>
          <input
            type="text"
            class="form-control"
            id="eid"
            name="eid"
            placeholder="Enter your employee ID"
            required
          />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </body>
</html>
