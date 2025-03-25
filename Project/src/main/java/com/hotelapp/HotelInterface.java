package com.hotelapp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class HotelInterface {

    private static final String TABLE = "hotel";

    private static final String BUILDING_NO = "h_building_no";
    private static final String NAME = "c_name";
    private static final String EMAIL = "email";
    private static final String STREET = "address_street";
    private static final String CITY = "address_city";
    private static final String PROVINCE = "address_province";
    private static final String POSTAL_CODE = "address_postal_code";
    private static final String CATEGORY = "category";


    public static void hotelInsert(String name, String email, String street,
                                   String city, String province, String postal, String  category) {
        Map<String,String> hotelMap = new HashMap<String, String>();
        hotelMap.put(NAME, name);
        hotelMap.put(EMAIL, email);
        hotelMap.put(STREET, street);
        hotelMap.put(CITY, city);
        hotelMap.put(PROVINCE, province);
        hotelMap.put(POSTAL_CODE, postal);
        hotelMap.put(CATEGORY, category);

        DBModifier.DBInsert(TABLE, hotelMap);
    }

    private static void hotelUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, BUILDING_NO, key, column, value);
    }

    public static void updateBuildingNo(String key, String value){
        hotelUpdate(key, BUILDING_NO, value);
    }

    public static void updateName(String key, String value){
        hotelUpdate(key, NAME, value);
    }

    public static void updateEmail(String key, String value){
        hotelUpdate(key, EMAIL, value);
    }

    public static void updateStreet(String key, String value){
        hotelUpdate(key, STREET, value);
    }


    public static void updateCity(String key, String value){
        hotelUpdate(key, CITY, value);
    }

    public static void updateProvince(String key, String value){
        hotelUpdate(key, PROVINCE, value);
    }

    public static void updatePostalCode(String key, String value){
        hotelUpdate(key, POSTAL_CODE, value);
    }

    public static void updateCategory(String key, String value){
        hotelUpdate(key, CATEGORY, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, BUILDING_NO, key);
    }

    public static ArrayList<ArrayList<String>> getHotelsInCity(String city) {
        ArrayList<ArrayList<String>> a = DBModifier.DBQuery("hotel", "h_building_no, c_name, email, address_street, address_city, address_province, address_postal_code, category", "address_city = '" + city + "'");
        return a;
    }

    public static void main(String[] args){
        //hotelInsert("City Comfort", "abc123@yahoo.net", "2345 Madeup Dr.", "Ottawa", "ON", "A1B2C3", "3");
        //updateCategory("41", "4");
        delete("41");
    }
}
