package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class DamagesInterface {
    private static final String TABLE = "room_damages";

    private static final String NUMBER = "room_number";
    private static final String HOTEL = "h_building_no";
    private static final String DAMAGE = "damage";


    public static void damageInsert(String number, String hotel, String damage) {
        Map<String,String> roomMap = new HashMap<String, String>();
        roomMap.put(NUMBER, number);
        roomMap.put(HOTEL, hotel);
        roomMap.put(DAMAGE, damage);

        DBModifier.DBInsert(TABLE, roomMap);
    }

    private static void damageUpdate(String numKey, String hotelKey, String column, String value){
        DBModifier.DBUpdateByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey, column, value);
    }

    public static void updateNumber(String numKey, String hotelKey, String value){
        damageUpdate(numKey, hotelKey, NUMBER, value);
    }

    public static void updateHotel(String numKey, String hotelKey, String value){
        damageUpdate(numKey, hotelKey, HOTEL, value);
    }

    public static void updateDamage(String numKey, String hotelKey, String value){
        damageUpdate(numKey, hotelKey, DAMAGE, value);
    }

    public static void delete(String numKey, String hotelKey){
        DBModifier.DBDeleteByTwoKeys(TABLE, NUMBER, numKey, HOTEL, hotelKey);
    }

    public static void main(String[] args){
        //damageInsert("105", "1", "big hole");
        //updateDamage("105", "1", "no bed");
        delete("105", "1");
    }
}
