package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class EmployeeInterface {
    private static final String TABLE = "Employee";

    private static final String ID = "e_id";
    private static final String ID_TYPE = "id_type";
    private static final String FNAME = "first_name";
    private static final String LNAME = "last_name";
    private static final String STREET = "address_street";
    private static final String CITY = "address_city";
    private static final String PROVINCE = "address_province";
    private static final String POSTAL_CODE = "address_postal_code";
    private static final String MANAGES = "manages_hotel";
    private static final String WORKS = "works_for_hotel";


    public static void employeeInsert(String id, String idType, String fName, String lName, String street,
                                      String city, String province, String postalCode, String manages, String works) {
        Map<String,String> employeeMap = new HashMap<String, String>();
        employeeMap.put(ID, id);
        employeeMap.put(ID_TYPE, idType);
        employeeMap.put(FNAME, fName);
        employeeMap.put(LNAME, lName);
        employeeMap.put(STREET, street);
        employeeMap.put(CITY, city);
        employeeMap.put(PROVINCE, province);
        employeeMap.put(POSTAL_CODE, postalCode);
        if (manages != null) {
            employeeMap.put(MANAGES, manages);
        }
        employeeMap.put(WORKS, works);


        DBModifier.DBInsert(TABLE, employeeMap);
    }

    private static void employeeUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, ID, key, column, value);
    }

    public static void updateKey(String key, String value){
        employeeUpdate(key, ID, value);
    }

    public static void updateIdType(String key, String value){
        employeeUpdate(key, ID_TYPE, value);
    }

    public static void updateFName(String key, String value){
        employeeUpdate(key, FNAME, value);
    }

    public static void updateLName(String key, String value){
        employeeUpdate(key, LNAME, value);
    }

    public static void updateStreet(String key, String value){
        employeeUpdate(key, STREET, value);
    }


    public static void updateCity(String key, String value){
        employeeUpdate(key, CITY, value);
    }

    public static void updateProvince(String key, String value){
        employeeUpdate(key, PROVINCE, value);
    }

    public static void updatePostalCode(String key, String value){
        employeeUpdate(key, POSTAL_CODE, value);
    }

    public static void updateManages(String key, String value){
        employeeUpdate(key, MANAGES, value);
    }

    public static void updateWorks(String key, String value){
        employeeUpdate(key, WORKS, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, ID, key);
    }

    public static void main(String[] args){
        //employeeInsert("12345678", "SSN", "FRED", "JONES", "1234 Fake Lane", "OTTAWA", "ON", "A1B2C3", null, "1");
        //updateCity("87654321", "NEPEAN");
        delete("87654321");
    }
}
