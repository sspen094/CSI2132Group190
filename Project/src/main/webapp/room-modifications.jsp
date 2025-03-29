<html>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>Room</title>
  </head>
<body>

    <div class="container">
      <div class="row" id="row">
        <div class="col-sm-12 mb-12"><h3>Create Room</h3></div>
        <div class="col-md-12">
          <form
            class="form-horizontal"
            name="room-create-form"
            action="insert-room-controller.jsp"
            method="POST"
          >
            <div class="form-group col-sm-3 mb-3">
              <label for="number">Room Number</label>
              <input
                type="text"
                class="form-control"
                name="number"
                placeholder="Enter Room Number"
              />
            </div>
            <div class="form-group col-sm-3 mb-3">
                <label for="hotel">Hotel Number</label>
                <input
                  type="text"
                  class="form-control"
                  name="hotel"
                  placeholder="Enter Hotel Number"
                />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="price">Price</label>
                    <input
                      type="text"
                      class="form-control"
                      name="price"
                      placeholder="Enter Price"
                    />
            </div>
            <div class="form-group col-sm-3 mb-3">
                        <label for="capacity">Capacity</label>
                        <input
                          type="text"
                          class="form-control"
                          name="capacity"
                          placeholder="Enter Capacity (1-6)"
                        />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="view">View Type</label>
                    <input
                      type="text"
                      class="form-control"
                      name="view"
                      placeholder="Enter View (mountain, ocean or blank)"
                    />
                </div>
                <div class="form-group col-sm-3 mb-3">
                    <label for="extendable">Is Extendable</label>
                    <input
                      type="text"
                      class="form-control"
                      name="extendable"
                      placeholder="Enter if it is Extendable (true or false)"
                    />
                </div>

            </div>
            <button type="submit" class="btn btn-primary btn-submit-custom col-sm-3">
              Submit
            </button>
          </form>
        </div>
      <div class="row" id="rowb">
        <div class="col-sm-12 mb-12"><h3>Update - Enter Previous Room Number and Hotel and any value you wish to update other than hotel</h3></div>
        <div class="col-md-12">
          <form
            class="form-horizontal"
            name="customer-form"
            action="update-room-controller.jsp"
            method="POST"
          >
          <div class="form-group col-sm-3 mb-3">
            <label for="prev-number">Previous Room Number</label>
            <input
              type="text"
              class="form-control"
              name="prev-number"
              placeholder="Enter Room Number"
            />
          </div>
          <div class="form-group col-sm-3 mb-3">
              <label for="number">New Room Number</label>
              <input
                type="text"
                class="form-control"
                name="number"
                placeholder="Enter Room Number"
              />
            </div>
            <div class="form-group col-sm-3 mb-3">
                <label for="hotel">Hotel Number</label>
                <input
                  type="text"
                  class="form-control"
                  name="hotel"
                  placeholder="Enter Hotel Number"
                />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="price">Price</label>
                    <input
                      type="text"
                      class="form-control"
                      name="price"
                      placeholder="Enter Price"
                    />
            </div>
            <div class="form-group col-sm-3 mb-3">
                        <label for="capacity">Capacity</label>
                        <input
                          type="text"
                          class="form-control"
                          name="capacity"
                          placeholder="Enter Capacity (1-6)"
                        />
            </div>
            <div class="form-group col-sm-3 mb-3">
                    <label for="view">View Type</label>
                    <input
                      type="text"
                      class="form-control"
                      name="view"
                      placeholder="Enter View (mountain, ocean or blank)"
                    />
                </div>
                <div class="form-group col-sm-3 mb-3">
                    <label for="extendable">Is Extendable</label>
                    <input
                      type="text"
                      class="form-control"
                      name="extendable"
                      placeholder="Enter if it is Extendable (true or false)"
                    />
                </div>

              </div>
            <button type="submit" class="btn btn-primary btn-submit-custom col-sm-3">
              Submit
            </button>
          </form>
        </div>
        <div class="row" id="rowd">
          <div class="col-sm-12 mb-12"><h3>Delete - Enter Number of room to delete</h3></div>
          <div class="col-md-8">
            <form
              class="form-horizontal"
              name="delete-form"
              action="delete-room-query.jsp"
              method="POST"
            >
              <div class="form-group col-sm-3 mb-3">
                <label for="number">Number</label>
                <input
                  type="text"
                  class="form-control"
                  name="number"
                  placeholder="Enter number"
                />
              </div>
              <div class="form-group col-sm-3 mb-3">
                <label for="hotel">Hotel Number</label>
                <input
                  type="text"
                  class="form-control"
                  name="hotel"
                  placeholder="Enter Hotel Number"
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