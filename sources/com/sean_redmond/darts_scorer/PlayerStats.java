package com.sean_redmond.darts_scorer;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.widget.TextView;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public class PlayerStats extends ActionBarActivity {
    DatabaseHelper dbh;
    String nameOfPlayer;
    double oneDaAve;
    int playerId;
    TextView playerName;
    Cursor res;
    double threeDaAve;
    TextView totalLegsPlayed;
    TextView totalLegsWon;
    TextView totalOneDartAvg;
    TextView totalSixties;
    TextView totalThreeDartAvg;
    TextView totalTonEighties;
    TextView totalTonForties;
    TextView totalTons;
    int legsPlayed = 0;
    int legsWon = 0;
    int sixties = 0;
    int tons = 0;
    int tonForties = 0;
    int tonEighties = 0;
    int pointsScored = 0;
    int dartsThrown = 0;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_player_stats);
        this.totalLegsPlayed = (TextView) findViewById(R.id.legsPlayed);
        this.totalLegsWon = (TextView) findViewById(R.id.legsWon);
        this.totalSixties = (TextView) findViewById(R.id.totalSixties);
        this.totalTons = (TextView) findViewById(R.id.totalTons);
        this.totalTonForties = (TextView) findViewById(R.id.tonForties);
        this.totalTonEighties = (TextView) findViewById(R.id.tonEighties);
        this.totalOneDartAvg = (TextView) findViewById(R.id.oneDaAvg);
        this.totalThreeDartAvg = (TextView) findViewById(R.id.threeDaAvg);
        this.playerName = (TextView) findViewById(R.id.playerNameTv);
        this.dbh = new DatabaseHelper(this);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.playerId = extras.getInt("playerId");
            this.nameOfPlayer = extras.getString("playerName");
        }
        this.res = this.dbh.readStatsData();
        if (this.res.getCount() != 0) {
            while (this.res.moveToNext()) {
                if (this.playerId == this.res.getInt(9)) {
                    this.legsPlayed += this.res.getInt(1);
                    this.legsWon += this.res.getInt(2);
                    this.sixties += this.res.getInt(3);
                    this.tons += this.res.getInt(4);
                    this.tonForties += this.res.getInt(5);
                    this.tonEighties += this.res.getInt(6);
                    this.pointsScored += this.res.getInt(7);
                    this.dartsThrown += this.res.getInt(8);
                }
            }
            if (this.dartsThrown != 0) {
                this.oneDaAve = ((double) this.pointsScored) / ((double) this.dartsThrown);
                this.threeDaAve = this.oneDaAve * 3.0d;
            }
        }
        DecimalFormat df = new DecimalFormat("0.00");
        this.totalLegsPlayed.setText("" + this.legsPlayed);
        this.totalLegsWon.setText("" + this.legsWon);
        this.totalSixties.setText("" + this.sixties);
        this.totalTons.setText("" + this.tons);
        this.totalTonForties.setText("" + this.tonForties);
        this.totalTonEighties.setText("" + this.tonEighties);
        this.totalOneDartAvg.setText("" + df.format(this.oneDaAve));
        this.totalThreeDartAvg.setText("" + df.format(this.threeDaAve));
        this.playerName.setText(this.nameOfPlayer);
    }
}
