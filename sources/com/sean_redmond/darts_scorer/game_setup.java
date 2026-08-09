package com.sean_redmond.darts_scorer;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.ToggleButton;

/* JADX INFO: loaded from: classes.dex */
public class game_setup extends ActionBarActivity {
    public static final String NAME_PREF = "namePreference";
    int cpuAverageScore;
    double cpuCheckoutPercentIncrementor;
    boolean isPlayCpuMode;
    int legsToPlay;
    Button numLegsBtn;
    int p1Id;
    String p1Name;
    int p2Id;
    String p2Name;
    boolean playTimerMode;
    int scoreStartFrom;
    Button startingScoreBtn;
    Button timePerShotBtn;
    TableRow timePerShotTableRow;
    TextView timePerShotTv;
    int timeUpPenalty;
    Button timeoutPenaltyBtn;
    TableRow timeoutPenaltyTableRow;
    TextView timeoutPenaltyTv;
    TableRow timerModeTableRow;
    int timerStartFrom;
    ToggleButton useTimer;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game_setup);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.p1Name = extras.getString("p1Name");
            this.p2Name = extras.getString("p2Name");
            this.p1Id = extras.getInt("p1Id");
            this.p2Id = extras.getInt("p2Id");
            this.cpuAverageScore = extras.getInt("cpuAverageScore");
            this.isPlayCpuMode = extras.getBoolean("isPlayCpuMode");
            this.cpuCheckoutPercentIncrementor = extras.getDouble("cpuCheckoutPercentIncrementor");
            this.timePerShotTableRow = (TableRow) findViewById(R.id.timePerShotTableRow);
            this.timeoutPenaltyTableRow = (TableRow) findViewById(R.id.timeoutPenaltyTableRow);
            this.timerModeTableRow = (TableRow) findViewById(R.id.timerModeTableRow);
            this.timePerShotTv = (TextView) findViewById(R.id.timePerShotTv);
            this.timeoutPenaltyTv = (TextView) findViewById(R.id.timeoutPenaltyTv);
            this.numLegsBtn = (Button) findViewById(R.id.numLegs);
            this.startingScoreBtn = (Button) findViewById(R.id.startScore);
            this.timePerShotBtn = (Button) findViewById(R.id.timePerShot);
            this.timeoutPenaltyBtn = (Button) findViewById(R.id.timeoutPeno);
            this.useTimer = (ToggleButton) findViewById(R.id.useTimer);
            this.numLegsBtn.setText("" + this.legsToPlay);
            this.startingScoreBtn.setText("" + this.scoreStartFrom);
            this.timePerShotBtn.setText("" + this.timerStartFrom);
            this.timeoutPenaltyBtn.setText("" + this.timeUpPenalty);
            this.useTimer.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sean_redmond.darts_scorer.game_setup.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
                        game_setup.this.playTimerMode = true;
                        game_setup.this.timePerShotBtn.setAlpha(1.0f);
                        game_setup.this.timePerShotBtn.setClickable(true);
                        game_setup.this.timeoutPenaltyBtn.setAlpha(1.0f);
                        game_setup.this.timeoutPenaltyBtn.setClickable(true);
                        game_setup.this.timePerShotTv.setAlpha(1.0f);
                        game_setup.this.timePerShotTv.setClickable(true);
                        game_setup.this.timeoutPenaltyTv.setAlpha(1.0f);
                        game_setup.this.timeoutPenaltyTv.setClickable(true);
                        return;
                    }
                    game_setup.this.playTimerMode = false;
                    game_setup.this.timePerShotBtn.setAlpha(0.5f);
                    game_setup.this.timePerShotBtn.setClickable(false);
                    game_setup.this.timeoutPenaltyBtn.setAlpha(0.5f);
                    game_setup.this.timeoutPenaltyBtn.setClickable(false);
                    game_setup.this.timePerShotTv.setAlpha(0.5f);
                    game_setup.this.timePerShotTv.setClickable(false);
                    game_setup.this.timeoutPenaltyTv.setAlpha(0.5f);
                    game_setup.this.timeoutPenaltyTv.setClickable(false);
                }
            });
            if (this.isPlayCpuMode) {
                this.timerModeTableRow.setVisibility(4);
                this.timePerShotTableRow.setVisibility(4);
                this.timeoutPenaltyTableRow.setVisibility(4);
                return;
            }
            this.timePerShotBtn.setAlpha(0.5f);
            this.timePerShotBtn.setClickable(false);
            this.timeoutPenaltyBtn.setAlpha(0.5f);
            this.timeoutPenaltyBtn.setClickable(false);
            this.timePerShotTv.setAlpha(0.5f);
            this.timePerShotTv.setClickable(false);
            this.timeoutPenaltyTv.setAlpha(0.5f);
            this.timeoutPenaltyTv.setClickable(false);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        SharedPreferences prefs = getSharedPreferences("namePreference", 0);
        this.legsToPlay = prefs.getInt("numLegs", 3);
        this.scoreStartFrom = prefs.getInt("startScore", 501);
        this.timerStartFrom = prefs.getInt("timeStartFrom", 25);
        this.timeUpPenalty = prefs.getInt("timeUpPeno", 60);
        this.playTimerMode = prefs.getBoolean("timerMode", true);
        this.numLegsBtn.setText(String.valueOf(this.legsToPlay));
        this.startingScoreBtn.setText(String.valueOf(this.scoreStartFrom));
        this.timePerShotBtn.setText(String.valueOf(this.timerStartFrom));
        this.timeoutPenaltyBtn.setText(String.valueOf(this.timeUpPenalty));
        if (this.playTimerMode) {
            this.useTimer.setChecked(true);
            this.timePerShotBtn.setAlpha(1.0f);
            this.timePerShotBtn.setClickable(true);
            this.timeoutPenaltyBtn.setAlpha(1.0f);
            this.timeoutPenaltyBtn.setClickable(true);
            this.timePerShotTv.setAlpha(1.0f);
            this.timePerShotTv.setClickable(true);
            this.timeoutPenaltyTv.setAlpha(1.0f);
            this.timeoutPenaltyTv.setClickable(true);
        } else {
            this.useTimer.setChecked(false);
            this.timePerShotBtn.setAlpha(0.5f);
            this.timePerShotBtn.setClickable(false);
            this.timeoutPenaltyBtn.setAlpha(0.5f);
            this.timeoutPenaltyBtn.setClickable(false);
            this.timePerShotTv.setAlpha(0.5f);
            this.timePerShotTv.setClickable(false);
            this.timeoutPenaltyTv.setAlpha(0.5f);
            this.timeoutPenaltyTv.setClickable(false);
        }
        if (this.isPlayCpuMode) {
            this.playTimerMode = false;
        }
    }

    public void onClickNumLegs(View view) {
        final CharSequence[] numLegs = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"};
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Number of Legs").setItems(numLegs, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.game_setup.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                game_setup.this.legsToPlay = Integer.parseInt(numLegs[which].toString());
                game_setup.this.numLegsBtn.setText("" + game_setup.this.legsToPlay);
            }
        });
        builder.show();
    }

    public void onClickStartingScore(View view) {
        final CharSequence[] items = {"301", "401", "501", "601", "701", "801", "901", "1001", "1501"};
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Starting Score").setItems(items, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.game_setup.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                game_setup.this.scoreStartFrom = Integer.parseInt(items[which].toString());
                game_setup.this.startingScoreBtn.setText("" + game_setup.this.scoreStartFrom);
            }
        });
        builder.show();
    }

    public void onClickTimePerShot(View view) {
        final CharSequence[] items = {"10", "15", "20", "25", "30", "35", "40", "45"};
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Time Per Shot (Seconds)").setItems(items, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.game_setup.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                game_setup.this.timerStartFrom = Integer.parseInt(items[which].toString());
                game_setup.this.timePerShotBtn.setText("" + game_setup.this.timerStartFrom);
            }
        });
        builder.show();
    }

    public void onClickTimeoutPenalty(View view) {
        final CharSequence[] items = {"10", "15", "20", "25", "30", "40", "50", "60", "80", "100"};
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Penalty for Timeout (Points)").setItems(items, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.game_setup.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                game_setup.this.timeUpPenalty = Integer.parseInt(items[which].toString());
                game_setup.this.timeoutPenaltyBtn.setText("" + game_setup.this.timeUpPenalty);
            }
        });
        builder.show();
    }

    public void goToPlayGame(View v) {
        Intent intent = new Intent(this, (Class<?>) play_game.class);
        intent.putExtra("legsToPlay", this.legsToPlay);
        intent.putExtra("scoreStartFrom", this.scoreStartFrom);
        intent.putExtra("p1Name", this.p1Name);
        intent.putExtra("p2Name", this.p2Name);
        intent.putExtra("p1Id", this.p1Id);
        intent.putExtra("p2Id", this.p2Id);
        intent.putExtra("isPlayCpuMode", this.isPlayCpuMode);
        intent.putExtra("cpuAverageScore", this.cpuAverageScore);
        intent.putExtra("cpuCheckoutPercentIncrementor", this.cpuCheckoutPercentIncrementor);
        intent.putExtra("timerModeSelection", this.playTimerMode);
        intent.putExtra("timerStartFrom", this.timerStartFrom);
        intent.putExtra("timeUpPenalty", this.timeUpPenalty);
        finish();
        startActivity(intent);
    }

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        SharedPreferences.Editor editor = getSharedPreferences("namePreference", 0).edit();
        editor.putInt("numLegs", this.legsToPlay);
        editor.putInt("startScore", this.scoreStartFrom);
        editor.putInt("timeStartFrom", this.timerStartFrom);
        editor.putInt("timeUpPeno", this.timeUpPenalty);
        editor.putBoolean("timerMode", this.playTimerMode);
        editor.apply();
    }
}
