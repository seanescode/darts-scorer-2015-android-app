package com.sean_redmond.darts_scorer;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SelectPlayer extends ActionBarActivity {
    public static final String NAME_PREF = "namePreference";
    Button choosePlayer1;
    Button choosePlayer2;
    int cpuAverageScore;
    double cpuCheckoutPercentIncrementor;
    String cpuLevel;
    DatabaseHelper dbh;
    CharSequence[] gameMode = {"Play Friend", "Play CPU"};
    Button gameModeButton;
    String gameModeSelected;
    int player1Id;
    String player1Name;
    int player2Id;
    TextView player2Label;
    String player2Name;
    private List<Integer> playerIds;
    private ArrayList<String> playerNames;
    int playerNo;
    Cursor res;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_select_player);
        this.gameModeButton = (Button) findViewById(R.id.gameModeButton);
        this.dbh = new DatabaseHelper(this);
        this.playerNames = new ArrayList<>();
        this.playerIds = new ArrayList();
        this.choosePlayer1 = (Button) findViewById(R.id.choosePlayer1);
        this.choosePlayer2 = (Button) findViewById(R.id.choosePlayer2);
        this.player2Label = (TextView) findViewById(R.id.player2Tv);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        SharedPreferences prefs = getSharedPreferences("namePreference", 0);
        this.player1Id = prefs.getInt("plyr1Id", 0);
        this.player2Id = prefs.getInt("plyr2Id", 0);
        this.gameModeSelected = prefs.getString("gameModeChosen", this.gameMode[0].toString());
        this.cpuAverageScore = prefs.getInt("cpuAvg", 0);
        this.cpuLevel = prefs.getString("compLevel", "");
        this.gameModeButton.setText(this.gameModeSelected);
        setP2Label();
        this.res = this.dbh.readPlayers();
        if (this.res.getCount() == 0) {
            Toast toast = Toast.makeText(getApplicationContext(), "Add player using button in top right corner!", 1);
            toast.setGravity(17, 0, 10);
            toast.show();
        }
        while (this.res.moveToNext()) {
            this.playerIds.add(Integer.valueOf(this.res.getInt(0)));
            this.playerNames.add(this.res.getString(1));
            if (this.res.getInt(0) == this.player1Id) {
                this.choosePlayer1.setText(this.res.getString(1));
            }
            if (isCpuMode()) {
                this.choosePlayer2.setText(this.cpuLevel);
            } else if (this.res.getInt(0) == this.player2Id) {
                this.choosePlayer2.setText(this.res.getString(1));
            }
        }
    }

    public boolean isCpuMode() {
        return this.gameModeSelected.equals(this.gameMode[1]);
    }

    public void onClickGameModeButton(View view) {
        final String gameModePriorToClick = this.gameModeSelected;
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Game Mode");
        builder.setItems(this.gameMode, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.SelectPlayer.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                SelectPlayer.this.gameModeSelected = SelectPlayer.this.gameMode[which].toString();
                SelectPlayer.this.gameModeButton.setText(SelectPlayer.this.gameModeSelected);
                SelectPlayer.this.setP2Label();
                if (!gameModePriorToClick.equals(SelectPlayer.this.gameModeSelected)) {
                    SelectPlayer.this.choosePlayer2.setText("");
                }
            }
        });
        builder.show();
    }

    public void setP2Label() {
        if (isCpuMode()) {
            this.player2Label.setText("CPU");
        } else {
            this.player2Label.setText("Player 2");
        }
    }

    public void cpuOpponentDialog() {
        final CharSequence[] cpuLevels = {"Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Level 7", "Level 8", "Level 9", "Level 10", "Level 11", "Level 12", "Level 13", "Level 14", "Level 15", "Level 16", "Level 17", "Level 18", "Level 19", "Level 20"};
        AlertDialog.Builder alert = new AlertDialog.Builder(this, 4);
        alert.setTitle("Pick computer level!");
        alert.setItems(cpuLevels, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.SelectPlayer.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                SelectPlayer.this.cpuLevel = cpuLevels[which].toString();
                SelectPlayer.this.choosePlayer2.setText(cpuLevels[which].toString());
                SelectPlayer.this.cpuAverageScore = (which * 5) + 20;
                SelectPlayer.this.cpuCheckoutPercentIncrementor = which + 1;
            }
        });
        alert.show();
    }

    public double cpuCheckoutPercentCalc(double incrementor) {
        double checkoutPercent = 0.15d + (0.02d * incrementor);
        double probabilityOfNoCheckout = 1.0d - checkoutPercent;
        return 1.0d - ((probabilityOfNoCheckout * probabilityOfNoCheckout) * probabilityOfNoCheckout);
    }

    public void showMessage(String title) {
        final CharSequence[] cs = (CharSequence[]) this.playerNames.toArray(new CharSequence[this.playerNames.size()]);
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setCancelable(true);
        builder.setTitle(title);
        builder.setItems(cs, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.SelectPlayer.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                if (SelectPlayer.this.playerNo == 1) {
                    SelectPlayer.this.player1Id = ((Integer) SelectPlayer.this.playerIds.get(which)).intValue();
                    SelectPlayer.this.choosePlayer1.setText(cs[which].toString());
                } else {
                    SelectPlayer.this.player2Id = ((Integer) SelectPlayer.this.playerIds.get(which)).intValue();
                    SelectPlayer.this.choosePlayer2.setText(cs[which].toString());
                }
            }
        });
        builder.show();
    }

    public void onClickChoosePlayer1(View v) {
        this.res = this.dbh.readPlayers();
        if (this.res.getCount() == 0) {
            showMessage("Error No Players added");
        } else {
            this.playerNo = 1;
            showMessage("Play as");
        }
    }

    public void onClickChoosePlayer2(View v) {
        this.playerNo = 2;
        if (!isCpuMode()) {
            this.res = this.dbh.readPlayers();
            if (this.res.getCount() == 0) {
                showMessage("Error No Players added");
                return;
            } else {
                showMessage("Play as");
                return;
            }
        }
        cpuOpponentDialog();
    }

    public void onClickPlayGame(View view) {
        if (this.choosePlayer1.getText().toString().equals("") || this.choosePlayer2.getText().toString().equals("")) {
            Toast toast = Toast.makeText(getApplicationContext(), "Please make sure players are inputted first!", 1);
            toast.setGravity(17, 0, 75);
            toast.show();
            return;
        }
        this.player1Name = this.choosePlayer1.getText().toString();
        this.player2Name = this.choosePlayer2.getText().toString();
        Intent i = new Intent(this, (Class<?>) game_setup.class);
        i.putExtra("p1Id", this.player1Id);
        i.putExtra("p2Id", this.player2Id);
        i.putExtra("p1Name", this.player1Name);
        i.putExtra("p2Name", this.player2Name);
        i.putExtra("cpuAverageScore", this.cpuAverageScore);
        i.putExtra("isPlayCpuMode", isCpuMode());
        i.putExtra("cpuCheckoutPercentIncrementor", this.cpuCheckoutPercentIncrementor);
        startActivity(i);
    }

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        SharedPreferences.Editor editor = getSharedPreferences("namePreference", 0).edit();
        editor.putInt("plyr1Id", this.player1Id);
        editor.putInt("plyr2Id", this.player2Id);
        editor.putInt("cpuAvg", this.cpuAverageScore);
        editor.putString("gameModeChosen", this.gameModeSelected);
        editor.putString("compLevel", this.cpuLevel);
        editor.apply();
        this.playerNames.clear();
        this.playerIds.clear();
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.selectplayer_activity_actions, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_add_player /* 2131558688 */:
                Intent i = new Intent(this, (Class<?>) newPlayer.class);
                startActivity(i);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
