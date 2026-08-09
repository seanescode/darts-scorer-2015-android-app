package com.sean_redmond.darts_scorer;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class StatsScreen extends ActionBarActivity {
    DatabaseHelper dbh;
    String playerName;
    Cursor playersCursor;
    Cursor statsCursor;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_stats_screen);
        this.dbh = new DatabaseHelper(this);
        this.statsCursor = this.dbh.readStatsData();
        this.playersCursor = this.dbh.readPlayers();
        while (this.statsCursor.moveToNext()) {
            int legsPlayed = this.statsCursor.getInt(1);
            int legsWon = this.statsCursor.getInt(2);
            int sixties = this.statsCursor.getInt(3);
            int oneHundreds = this.statsCursor.getInt(4);
            this.statsCursor.getInt(5);
            this.statsCursor.getInt(6);
            double oneDartAve = this.statsCursor.getDouble(7);
            this.statsCursor.getDouble(8);
            int playerIdFk = this.statsCursor.getInt(9);
            while (this.playersCursor.moveToNext()) {
                if (playerIdFk == this.playersCursor.getInt(0)) {
                    this.playerName = this.playersCursor.getString(1);
                }
            }
            this.playersCursor.moveToFirst();
            Toast toast = Toast.makeText(getApplicationContext(), "playerIdFk=> " + playerIdFk + "\nplayerName=> " + this.playerName + "\nlegs Played: " + legsPlayed + "\nlegs Won:" + legsWon + "\nsixties: " + sixties + "\noneHundreds: " + oneHundreds + "\none da average: " + oneDartAve + "\n", 1);
            toast.setGravity(17, 0, 75);
            toast.show();
        }
    }
}
