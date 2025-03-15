package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class RentingInterface {
    private static final String TABLE = "renting";

    private static final String ID = "r_id";
    private static final String EMPLOYEE = "e_id";
    private static final String BOOKING = "b_id";


    public static void rentingInsert(String employee, String booking) {
        Map<String,String> rentingMap = new HashMap<String, String>();
        rentingMap.put(EMPLOYEE, employee);
        rentingMap.put(BOOKING, booking);

        DBModifier.DBInsert(TABLE, rentingMap);
    }

    public static void rentingWithPaymentInsert(String employee, String booking, String amount, String method) {
        Map<String,String> rentingMap = new HashMap<String, String>();
        rentingMap.put(EMPLOYEE, employee);
        rentingMap.put(BOOKING, booking);

        String output = DBModifier.DBInsertWithOutput(TABLE, rentingMap, ID);

        PaymentInterface.paymentInsert(output, amount, method);
    }



    private static void rentingUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, ID, key, column, value);
    }

    public static void updateID(String key, String value){
        rentingUpdate(key, ID, value);
    }

    public static void updateEmployee(String key, String value){
        rentingUpdate(key, EMPLOYEE, value);
    }

    public static void updateBooking(String key, String value){
        rentingUpdate(key, BOOKING, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, ID, key);
    }

    public static void main(String[] args){
        rentingWithPaymentInsert("12345678", "4", "150.00", "DebitCard");
        //updateBooking("2", "6");
        //delete("Susannes Inn");
    }
}
