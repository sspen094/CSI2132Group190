<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ page import="com.hotelapp.HotelInterface" %>
<%@ page import="java.util.ArrayList" %>

<% 
    String city = request.getParameter("city");
    ArrayList<ArrayList<String>> hotels = HotelInterface.getHotelsInCity(city);
%>


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
            <% if (hotels == null || hotels.size() == 1) { %>
                <h1 style="margin-top: 5rem;">No Hotels found!</h1>
                <% } else { %>
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <%
                        for (ArrayList<String> h : hotels) { %>
                        <tr>
                            <td><%= h.get(0) %></td>
                            <td><%= h.get(1) %></td>
                            <td><%= h.get(2) %></td>
                            <td><%= h.get(3) %></td>
                            <td><%= h.get(4) %></td>
                            <td><%= h.get(5) %></td>
                            <td><%= h.get(6) %></td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                </div>
                <% } %>
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
