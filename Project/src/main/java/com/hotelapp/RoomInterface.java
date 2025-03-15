package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class RoomInterface {
    private static final String TABLE = "room";

    private static final String NUMBER = "room_number";
    private static final String HOTEL = "h_building_no";
    private static final String PRICE = "price";
    private static final String CAPACITY = "capacity";
    private static final String VIEW_TYPE = "view_type";
    private static final String EXTENDABLE = "extendable";


    public static void roomInsert(String number, String hotel, String price, String capacity, String view, String extendable) {
        Map<String,String> roomMap = new HashMap<String, String>();
        roomMap.put(NUMBER, number);
        roomMap.put(HOTEL, hotel);
        roomMap.put(PRICE, price);
        roomMap.put(CAPACITY, capacity);
        roomMap.put(VIEW_TYPE, view);
        roomMap.put(EXTENDABLE, extendable);

        DBModifier.DBInsert(TABLE, roomMap);
    }

    private static void roomUpdate(String numKey, String hotelKey, String column, String value){
        DBModifier.DBUpdateByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey, column, value);
    }

    public static void updateNumber(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, NUMBER, value);
    }

    public static void updateHotel(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, HOTEL, value);
    }

    public static void updatePrice(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, PRICE, value);
    }

    public static void updateCapacity(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, CAPACITY, value);
    }

    public static void updateView(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, VIEW_TYPE, value);
    }

    public static void updateExtendable(String numKey, String hotelKey, String value){
        roomUpdate(numKey, hotelKey, EXTENDABLE, value);
    }

    public static void delete(String numKey, String hotelKey){
        DBModifier.DBDeleteByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey);
    }

    public static void main(String[] args){
        //roomInsert("106", "1", "200.00", "5", "mountain", "false");
        //updateExtendable("106", "1", "true");
        delete("106", "1");
    }
}
