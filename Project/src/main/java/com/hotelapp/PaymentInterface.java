package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class PaymentInterface {
    private static final String TABLE = "payment";

    private static final String RENTING_ID = "r_id";
    private static final String EMPLOYEE = "employee_id";
    private static final String AMOUNT = "amount";
    private static final String METHOD = "payment_method";


    public static void paymentInsert(String renting, String employee, String amount, String method) {
        Map<String,String> rentingMap = new HashMap<String, String>();
        rentingMap.put(RENTING_ID, renting);
        rentingMap.put(EMPLOYEE, employee);
        rentingMap.put(AMOUNT, amount);
        rentingMap.put(METHOD, method);

        DBModifier.DBInsert(TABLE, rentingMap);
    }

    private static void paymentUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, RENTING_ID, key, column, value);
    }

    public static void updateID(String key, String value){
        paymentUpdate(key, RENTING_ID, value);
    }

    public static void updateAmount(String key, String value){
        paymentUpdate(key, AMOUNT, value);
    }

    public static void updateMethod(String key, String value){
        paymentUpdate(key, METHOD, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, RENTING_ID, key);
    }

    public static void main(String[] args){
        //paymentInsert("1", "100.50", "CreditCard");
        //updateName("Anns Inn", "Susannes Inn");
        //delete("Susannes Inn");
    }

}
