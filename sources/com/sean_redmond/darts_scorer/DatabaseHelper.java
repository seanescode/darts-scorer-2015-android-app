package com.sean_redmond.darts_scorer;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseHelper extends SQLiteOpenHelper {
    public static final String DARTS_THROWN = "DARTS_THROWN";
    public static final String DATABASE_NAME = "DartsScorer.db";
    public static final String LEGS_PLAYED_COL = "LEGS_PLAYED";
    public static final String LEGS_WON_COL = "LEGS_WON";
    public static final String NAME_COL = "NAME";
    public static final String ONE_EIGHTIES_COL = "ONE_EIGHTIES";
    public static final String ONE_FORTY_PLUS_COL = "ONE_FORTIES";
    public static final String ONE_HUNDRED_PLUS_COL = "ONE_HUNDREDS";
    public static final String PLAYERS_TABLE = "PLAYERS_TABLE";
    public static final String PLAYER_ID = "ID";
    public static final String PLAYER_ID_FK = "PLAYER_ID_FK";
    public static final String POINTS_SCORED = "POINTS_SCORED";
    public static final String SIXTY_PLUS_COL = "SIXTIES";
    public static final String STATS_ID = "ID";
    public static final String STATS_TABLE = "STATS_TABLE";

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE PLAYERS_TABLE (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT)");
        db.execSQL("CREATE TABLE STATS_TABLE (ID INTEGER PRIMARY KEY AUTOINCREMENT, LEGS_PLAYED INTEGER, LEGS_WON INTEGER, SIXTIES INTEGER, ONE_HUNDREDS INTEGER, ONE_FORTIES INTEGER, ONE_EIGHTIES INTEGER, POINTS_SCORED INTEGER, DARTS_THROWN INTEGER, PLAYER_ID_FK INTEGER, FOREIGN KEY(PLAYER_ID_FK) REFERENCES PLAYERS_TABLE (ID))");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS PLAYERS_TABLE");
        db.execSQL("DROP TABLE IF EXISTS STATS_TABLE");
        onCreate(db);
    }

    public boolean insertPlayer(String name) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(NAME_COL, name);
        long result = db.insert(PLAYERS_TABLE, null, contentValues);
        return result != -1;
    }

    public Cursor readPlayers() {
        SQLiteDatabase db = getWritableDatabase();
        Cursor res = db.rawQuery("select * from PLAYERS_TABLE", null);
        return res;
    }

    public boolean updatePlayer(String id, String name) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("ID", id);
        contentValues.put(NAME_COL, name);
        db.update(PLAYERS_TABLE, contentValues, "id = ?", new String[]{id});
        return true;
    }

    public Integer deletePlayer(String id) {
        SQLiteDatabase db = getWritableDatabase();
        return Integer.valueOf(db.delete(PLAYERS_TABLE, "id =?", new String[]{id}));
    }

    public boolean insertStats(int playerIdFk, int legsPlayed, int legsWon, int sixties, int oneHundreds, int oneForties, int oneEighties, int pointsScored, int dartsThrown) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(PLAYER_ID_FK, Integer.valueOf(playerIdFk));
        contentValues.put(LEGS_PLAYED_COL, Integer.valueOf(legsPlayed));
        contentValues.put(LEGS_WON_COL, Integer.valueOf(legsWon));
        contentValues.put(SIXTY_PLUS_COL, Integer.valueOf(sixties));
        contentValues.put(ONE_HUNDRED_PLUS_COL, Integer.valueOf(oneHundreds));
        contentValues.put(ONE_FORTY_PLUS_COL, Integer.valueOf(oneForties));
        contentValues.put(ONE_EIGHTIES_COL, Integer.valueOf(oneEighties));
        contentValues.put(POINTS_SCORED, Integer.valueOf(pointsScored));
        contentValues.put(DARTS_THROWN, Integer.valueOf(dartsThrown));
        long result = db.insert(STATS_TABLE, null, contentValues);
        return result != -1;
    }

    public Cursor readStatsData() {
        SQLiteDatabase db = getWritableDatabase();
        Cursor res = db.rawQuery("select * from STATS_TABLE", null);
        return res;
    }
}
