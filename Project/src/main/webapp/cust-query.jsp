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

    <div class="container">
      <div class="row" id="row">
        
      <div class="row" id="rowc">
        <div class="col-md-8">
          <form
            class="form-horizontal"
            name="city-form"
            action="city-query.jsp"
            method="POST"
          >
            <div class="form-group col-sm-3 mb-3">
              <label for="city">City</label>
              <input
                type="text"
                class="form-control"
                name="city"
                placeholder="Enter Hotel City"
              />
            </div>
            
            <button type="submit" class="btn btn-primary btn-submit-custom col-sm-3">
              Submit
            </button>
          </form>
        </div>
        
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>