package com.sean_redmond.darts_scorer;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class ManagePlayersSubScreen extends ActionBarActivity {
    DatabaseHelper dbh;
    int playerId;
    String playerName;
    EditText playerNameEditText;
    Button playerStats;
    Cursor res;
    Button updatePlayerNameBtn;
    String updatedName;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_manage_players_sub_screen);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.playerId = extras.getInt("playerId");
        }
        this.playerNameEditText = (EditText) findViewById(R.id.playerName);
        this.updatePlayerNameBtn = (Button) findViewById(R.id.updateNameButton);
        this.playerStats = (Button) findViewById(R.id.playerStatsButton);
        onClickPlayerStats();
        this.dbh = new DatabaseHelper(this);
        this.res = this.dbh.readPlayers();
        while (this.res.moveToNext()) {
            if (this.res.getInt(0) == this.playerId) {
                this.playerName = this.res.getString(1);
                this.playerNameEditText.setText(this.playerName);
            }
        }
    }

    public void onClickUpdateName(View v) {
        this.updatedName = this.playerNameEditText.getText().toString();
        boolean isUpdated = this.dbh.updatePlayer(String.valueOf(this.playerId), this.updatedName);
        if (this.updatedName.equals(this.playerName)) {
            Toast noChangeToNameMessage = Toast.makeText(this, "Name still " + this.updatedName + ".", 1);
            noChangeToNameMessage.setGravity(17, 0, 0);
            noChangeToNameMessage.show();
        } else if (isUpdated) {
            Toast updatedNameMessage = Toast.makeText(this, "Name updated to " + this.updatedName + ".", 1);
            updatedNameMessage.setGravity(17, 0, 0);
            updatedNameMessage.show();
        } else {
            Toast notUpdatedNameMessage = Toast.makeText(this, "Name not updated!", 1);
            notUpdatedNameMessage.setGravity(17, 0, 0);
            notUpdatedNameMessage.show();
        }
    }

    public void onClickPlayerStats() {
        this.playerStats.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.ManagePlayersSubScreen.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Intent intent = new Intent(ManagePlayersSubScreen.this.getApplicationContext(), (Class<?>) PlayerStats.class);
                intent.putExtra("playerId", ManagePlayersSubScreen.this.playerId);
                intent.putExtra("playerName", ManagePlayersSubScreen.this.playerName);
                ManagePlayersSubScreen.this.startActivity(intent);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.manage_players_sub_screen_activity_actions, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_delete_player /* 2131558684 */:
                deletePlayer();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public void deletePlayer() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Delete Player?");
        builder.setMessage("Are you sure? This can't be undone.");
        builder.setPositiveButton("Yeah", new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.ManagePlayersSubScreen.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                if (ManagePlayersSubScreen.this.dbh.deletePlayer(String.valueOf(ManagePlayersSubScreen.this.playerId)).intValue() > 0) {
                    Toast.makeText(ManagePlayersSubScreen.this, "Player Deleted", 1).show();
                    ManagePlayersSubScreen.this.finish();
                } else {
                    Toast.makeText(ManagePlayersSubScreen.this, "Player NOT Deleted", 1).show();
                }
            }
        });
        builder.setNegativeButton("Nope", new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.ManagePlayersSubScreen.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        builder.show();
    }
}
