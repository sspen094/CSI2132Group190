package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class CustomerInterface {

    private static final String TABLE = "Customer";

    private static final String ID = "c_id";
    private static final String ID_TYPE = "id_type";
    private static final String FNAME = "first_name";
    private static final String LNAME = "last_name";
    private static final String STREET = "address_street";
    private static final String CITY = "address_city";
    private static final String PROVINCE = "address_province";
    private static final String POSTAL_CODE = "address_postal_code";

    public static void customerInsert(String id, String idType, String fName, String lName,
            String street, String city, String province, String postalCode) {
        Map<String, String> customerMap = new HashMap<String, String>();
        customerMap.put(ID, id);
        customerMap.put(ID_TYPE, idType);
        customerMap.put(FNAME, fName);
        customerMap.put(LNAME, lName);
        customerMap.put(STREET, street);
        customerMap.put(CITY, city);
        customerMap.put(PROVINCE, province);
        customerMap.put(POSTAL_CODE, postalCode);

        DBModifier.DBInsert(TABLE, customerMap);
    }

    private static void customerUpdate(String key, String column, String value) {
        if (value != null) {
            DBModifier.DBUpdateByKey(TABLE, ID, key, column, value);
        }
    }

    public static void updateKey(String key, String value) {
        customerUpdate(key, ID, value);
    }

    public static void updateIdType(String key, String value) {
        customerUpdate(key, ID_TYPE, value);
    }

    public static void updateFName(String key, String value) {
        customerUpdate(key, FNAME, value);
    }

    public static void updateLName(String key, String value) {
        customerUpdate(key, LNAME, value);
    }

    public static void updateStreet(String key, String value) {
        customerUpdate(key, STREET, value);
    }

    public static void updateCity(String key, String value) {
        customerUpdate(key, CITY, value);
    }

    public static void updateProvince(String key, String value) {
        customerUpdate(key, PROVINCE, value);
    }

    public static void updatePostalCode(String key, String value) {
        customerUpdate(key, POSTAL_CODE, value);
    }

    public static void delete(String key) {
        DBModifier.DBDeleteByKey(TABLE, ID, key);
    }

    public static void main(String[] args) {
        customerInsert("87654321", "SSN", "BILLYBOB", "JONES", "1234 Fake Lane", "OTTAWA", "ON", "A1B2C3");
        // updateCity("87654321", "NEPEAN");
        // delete("87654321");
    }
}
