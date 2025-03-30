<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hotelapp.DBModifier" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Views</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />
</head>
<body>
<div class="container mt-4">
    <h2 class="mb-4">Available Rooms Per Area</h2>
    <%
        ArrayList<ArrayList<String>> view1 = DBModifier.DBQuery("Available_Rooms_Per_Area", "*", "1=1");
    %>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <% for (String col : view1.get(0)) { %>
                <th><%= col %></th>
            <% } %>
        </tr>
        </thead>
        <tbody>
        <% for (int i = 1; i < view1.size(); i++) { %>
            <tr>
                <% for (String val : view1.get(i)) { %>
                    <td><%= val %></td>
                <% } %>
            </tr>
        <% } %>
        </tbody>
    </table>

    <h2 class="mt-5 mb-4">Aggregated Capacity Per Hotel</h2>
    <%
        ArrayList<ArrayList<String>> view2 = DBModifier.DBQuery("Aggregated_Capacity_Per_Hotel", "*", "1=1");
    %>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <% for (String col : view2.get(0)) { %>
                <th><%= col %></th>
            <% } %>
        </tr>
        </thead>
        <tbody>
        <% for (int i = 1; i < view2.size(); i++) { %>
            <tr>
                <% for (String val : view2.get(i)) { %>
                    <td><%= val %></td>
                <% } %>
            </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>