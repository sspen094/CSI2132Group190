package com.hotelapp;

import java.sql.*;
import java.util.Map;


public class DBModifier {

    private static final String url = "jdbc:postgresql://localhost:5432/ProjectDatabase";
    private static final String username = "postgres";
    private static final String password = "postgres";

    public static void DBInsert(String tableName, Map<String,String> insertMap){

        try {
            Connection db = DriverManager.getConnection(url, username, password);
            Statement st = db.createStatement();
            String sql = "INSERT INTO " + tableName;
            String tableParams = "(";
            String valueParams = "(";

            for (Map.Entry<String, String> i : insertMap.entrySet()) {
                if (tableParams.equals("(") && valueParams.equals("(")) {
                    tableParams = tableParams + i.getKey();
                    valueParams = valueParams + "'" + i.getValue() + "'";
                } else {
                    tableParams = tableParams + ", " + i.getKey();
                    valueParams = valueParams + ", " + "'" +  i.getValue() + "'";
                }
            }

            sql = sql + tableParams + ") VALUES " + valueParams + ")";
            st.executeUpdate(sql);
            st.close();
        } catch( SQLException e){
            e.printStackTrace();
        }
    }

    public static String DBInsertWithOutput(String tableName, Map<String,String> insertMap, String outputType){

        try {
            Connection db = DriverManager.getConnection(url, username, password);
            Statement st = db.createStatement();
            String sql = "INSERT INTO " + tableName;
            String tableParams = "(";
            String valueParams = "(";

            for (Map.Entry<String, String> i : insertMap.entrySet()) {
                if (tableParams.equals("(") && valueParams.equals("(")) {
                    tableParams = tableParams + i.getKey();
                    valueParams = valueParams + "'" + i.getValue() + "'";
                } else {
                    tableParams = tableParams + ", " + i.getKey();
                    valueParams = valueParams + ", " + "'" +  i.getValue() + "'";
                }
            }

            sql = sql + tableParams + ") VALUES " + valueParams + ") RETURNING " + outputType;
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            String retVal = rs.getString(1);
            rs.close();
            st.close();
            return retVal;
        } catch( SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    public static void DBUpdateByKey(String tableName, String pkColumn, String pk, String column, String value){
        try{
        Connection db = DriverManager.getConnection(url, username, password);
        Statement st = db.createStatement();
        String sql = "UPDATE " + tableName + " SET " + column + " = '" + value + "' WHERE " + pkColumn + " = '" + pk + "'";

        st.executeUpdate(sql);
        st.close();
        } catch( SQLException e){
            e.printStackTrace();
        }
    }

    public static void DBUpdateByTwoKeys(String tableName, String pkColumn1, String pk1, String pkColumn2, String pk2, String column, String value){
        try{
            Connection db = DriverManager.getConnection(url, username, password);
            Statement st = db.createStatement();
            String sql = "UPDATE " + tableName + " SET " + column + " = '" + value + "' WHERE " + pkColumn1 + " = '" + pk1 + "' AND " + pkColumn2 + " = '" + pk2 + "'";

            st.executeUpdate(sql);
            st.close();
        } catch( SQLException e){
            e.printStackTrace();
        }
    }

    public static void DBDeleteByKey(String tableName, String pkColumn, String pk){
        try{
        Connection db = DriverManager.getConnection(url, username, password);
        Statement st = db.createStatement();
        String sql = "DELETE FROM " + tableName + " WHERE " + pkColumn + " = '" + pk + "'";

        st.executeUpdate(sql);
        st.close();
        } catch( SQLException e){
            e.printStackTrace();
        }
    }

    public static void DBDeleteByTwoKeys(String tableName, String pkColumn1, String pk1, String pkColumn2, String pk2){
        try{
            Connection db = DriverManager.getConnection(url, username, password);
            Statement st = db.createStatement();
            String sql = "DELETE FROM " + tableName + " WHERE " + pkColumn1 + " = '" + pk1 + "' AND " + pkColumn2 + " = '" + pk2 + "'";

            st.executeUpdate(sql);
            st.close();
        } catch( SQLException e){
            e.printStackTrace();
        }
    }

}
