<html>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>Home</title>
  </head>

  <body>
    <h2>Customer</h2>
    <div class="container" id="row-container">
      <div class="row" id="row">
        <div class="col-md-6">
          <div class="card" id="card-container-layout">
            <div class="card-body" id="card">
              <h4 class="card-title">Account</h4>
              <p class="card-text" id="paragraph">Create and Modify Account</p>
              <a
                class="btn btn-primary"
                id="show-btn"
                href="customer-account.jsp"
                >Show</a
              >
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card" id="card-container-layout">
            <div class="card-body" id="card">
              <h4 class="card-title">Hotel</h4>
              <p class="card-text" id="paragraph">
                Search Rooms and Create Bookings
              </p>
              <a class="btn btn-primary" id="show-btn" href="cust-query.jsp"
                >Show</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
