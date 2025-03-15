package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class BookingInterface {
    private static final String TABLE = "Booking";

    private static final String ID = "b_id";
    private static final String START = "start_date";
    private static final String END = "end_date";
    private static final String CUST = "c_id";
    private static final String ROOM = "room_number";
    private static final String HOTEL = "h_building_no";


    public static String bookingInsert(String startDate, String endDate, String cust, String roomNumber, String hotel) {
        Map<String,String> customerMap = new HashMap<String, String>();
        customerMap.put(START, startDate);
        customerMap.put(END, endDate);
        customerMap.put(CUST, cust);
        customerMap.put(ROOM, roomNumber);
        customerMap.put(HOTEL, hotel);

        return DBModifier.DBInsertWithOutput(TABLE, customerMap, ID);
    }

    private static void bookingUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, ID, key, column, value);
    }

    public static void updateKey(String key, String value){
        bookingUpdate(key, ID, value);
    }

    public static void updateStart(String key, String value){
        bookingUpdate(key, START, value);
    }

    public static void updateEnd(String key, String value){
        bookingUpdate(key, END, value);
    }

    public static void updateCust(String key, String value){
        bookingUpdate(key, CUST, value);
    }

    public static void updateRoom(String key, String value){
        bookingUpdate(key, ROOM, value);
    }

    public static void updateHotel(String key, String value){
        bookingUpdate(key, HOTEL, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, ID, key);
    }

    public static void main(String[] args){
        System.out.println(bookingInsert("2025-04-20", "2025-04-20", "12345678", "101", "3"));

    }
}
