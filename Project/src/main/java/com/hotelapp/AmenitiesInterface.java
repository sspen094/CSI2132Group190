package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class AmenitiesInterface {
    private static final String TABLE = "room_amenities";

    private static final String NUMBER = "room_number";
    private static final String HOTEL = "h_building_no";
    private static final String AMENITY = "amenity";


    public static void amenityInsert(String number, String hotel, String amenity) {
        Map<String,String> roomMap = new HashMap<String, String>();
        roomMap.put(NUMBER, number);
        roomMap.put(HOTEL, hotel);
        roomMap.put(AMENITY, amenity);

        DBModifier.DBInsert(TABLE, roomMap);
    }

    private static void amenityUpdate(String numKey, String hotelKey, String column, String value){
        DBModifier.DBUpdateByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey, column, value);
    }

    public static void updateNumber(String numKey, String hotelKey, String value){
        amenityUpdate(numKey, hotelKey, NUMBER, value);
    }

    public static void updateHotel(String numKey, String hotelKey, String value){
        amenityUpdate(numKey, hotelKey, HOTEL, value);
    }

    public static void updateAmenity(String numKey, String hotelKey, String value){
        amenityUpdate(numKey, hotelKey, AMENITY, value);
    }

    public static void delete(String numKey, String hotelKey){
        DBModifier.DBDeleteByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey);
    }

    public static void main(String[] args){
        //amenityInsert("105", "1", "lights");
        //updateAmenity("105", "1", "bed");
        delete("105", "1");
    }
}
