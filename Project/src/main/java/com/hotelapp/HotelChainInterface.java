package com.hotelapp;

import java.util.HashMap;
import java.util.Map;

public class HotelChainInterface {

    private static final String TABLE = "hotel_chain";

    private static final String NAME = "c_name";


    public static void chainInsert(String name) {
        Map<String,String> chainMap = new HashMap<String, String>();
        chainMap.put(NAME, name);

        DBModifier.DBInsert(TABLE, chainMap);
    }

    private static void chainUpdate(String key, String column, String value){
        DBModifier.DBUpdateByKey(TABLE, NAME, key, column, value);
    }

    public static void updateName(String key, String value){
        chainUpdate(key, NAME, value);
    }

    public static void delete(String key){
        DBModifier.DBDeleteByKey(TABLE, NAME, key);
    }

    public static void main(String[] args){
        //chainInsert("Anns Inn");
        //updateName("Anns Inn", "Susannes Inn");
        delete("Susannes Inn");
    }
}
