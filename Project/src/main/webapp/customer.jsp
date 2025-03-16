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

    <div class="container">
      <div class="row" id="row">
        <div class="col-md-12">
          <form
            class="form-horizontal"
            name="customer-form"
            action="insert-customer-controller.jsp"
            method="POST"
          >
            <div class="form-group col-sm-3 mb-3">
              <label for="id">ID</label>
              <input
                type="text"
                class="form-control"
                name="id"
                placeholder="Enter ID"
              />
            </div>
            <div class="form-group col-sm-3 mb-3">
                <label for="type">ID Type</label>
                <input
                  type="text"
                  class="form-control"
                  name="type"
                  placeholder="Enter type"
                />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="fname">First Name</label>
                    <input
                      type="text"
                      class="form-control"
                      name="fname"
                      placeholder="Enter First Name"
                    />
            </div>
            <div class="form-group col-sm-3 mb-3">
                        <label for="lname">Last Name</label>
                        <input
                          type="text"
                          class="form-control"
                          name="lname"
                          placeholder="Enter Last Name"
                        />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="street">Street</label>
                    <input
                      type="text"
                      class="form-control"
                      name="street"
                      placeholder="Enter Street"
                    />
                </div>
                <div class="form-group col-sm-3 mb-3">
                    <label for="city">City</label>
                    <input
                      type="text"
                      class="form-control"
                      name="city"
                      placeholder="Enter City"
                    />
                </div>

                <div class="form-group col-sm-3 mb-3">
                    <label for="province">Province</label>
                    <input
                      type="text"
                      class="form-control"
                      name="province"
                      placeholder="Enter Province"
                    />
                </div>

                <div class="form-group col-sm-3 mb-3">
                    <label for="postal">Postal Code</label>
                    <input
                      type="text"
                      class="form-control"
                      name="postal"
                      placeholder="Enter Postal Code"
                    />
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-submit-custom">
              Submit
            </button>
          </form>
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
