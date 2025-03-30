<%@ page import="com.hotelapp.PaymentInterface" %>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>

<%
    // Check if form was submitted
    String rentingId = request.getParameter("renting_id");
    String employeeId = request.getParameter("employee_id");
    String amount = request.getParameter("amount");
    String method = request.getParameter("payment_method");

    String message = "";

    if (rentingId != null && employeeId != null && amount != null && method != null) {
        try {
            PaymentInterface.paymentInsert(rentingId, employeeId, amount, method);
            message = "Payment successfully submitted.";
        } catch (Exception e) {
            message = "Error submitting payment: " + e.getMessage();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Submit Payment</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 2rem; }
        form { max-width: 400px; margin: auto; background: #f5f5f5; padding: 2rem; border-radius: 8px; }
        input, select { width: 100%; padding: 0.5rem; margin-top: 0.5rem; }
        button { margin-top: 1rem; padding: 0.7rem; width: 100%; background-color: #4CAF50; color: white; border: none; border-radius: 4px; }
        .message { text-align: center; margin-top: 1rem; color: green; }
    </style>
</head>
<body>

<h2 style="text-align:center;">Record a Payment</h2>

<form method="post" action="submit_payment.jsp">
    <label for="renting_id">Renting ID:</label>
    <input type="text" id="renting_id" name="renting_id" required />

    <label for="employee_id">Employee ID:</label>
    <input type="text" id="employee_id" name="employee_id" required />

    <label for="amount">Amount ($):</label>
    <input type="number" step="0.01" id="amount" name="amount" required />

    <label for="payment_method">Payment Method:</label>
    <select id="payment_method" name="payment_method" required>
        <option value="">--Select--</option>
        <option value="Credit Card">Credit Card</option>
        <option value="Debit Card">Debit Card</option>
        <option value="Cash">Cash</option>
        <option value="Online">Online</option>
    </select>

    <button type="submit">Submit Payment</button>
</form>

<div class="message"><%= message %></div>

</body>
</html>
