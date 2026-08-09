package com.sean_redmond.darts_scorer;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ManagePlayers extends ActionBarActivity {
    DatabaseHelper dbh;
    ArrayAdapter<String> myArrayAdapter;
    ArrayList<Integer> playerIdArrayList;
    ArrayList<String> playerNameArrayList;
    int playersId;
    ListView playersListView;
    Cursor res;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_manage_players);
        this.playersListView = (ListView) findViewById(R.id.playersListView);
        this.playerNameArrayList = new ArrayList<>();
        this.playerIdArrayList = new ArrayList<>();
        this.myArrayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, this.playerNameArrayList);
        this.playersListView.setAdapter((ListAdapter) this.myArrayAdapter);
        this.dbh = new DatabaseHelper(this);
        this.res = this.dbh.readPlayers();
        if (this.res.getCount() == 0) {
            Toast toast = Toast.makeText(getApplicationContext(), "No players have been added yet!", 1);
            toast.setGravity(17, 0, 75);
            toast.show();
        } else {
            while (this.res.moveToNext()) {
                this.playerNameArrayList.add(this.res.getString(1));
                this.playerIdArrayList.add(Integer.valueOf(this.res.getInt(0)));
            }
            this.playersListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.sean_redmond.darts_scorer.ManagePlayers.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    ManagePlayers.this.playersId = ManagePlayers.this.playerIdArrayList.get(position).intValue();
                    ManagePlayers.this.navigateToPlayerInfoScreen(view);
                }
            });
        }
    }

    public void navigateToPlayerInfoScreen(View v) {
        Intent i = new Intent(this, (Class<?>) ManagePlayersSubScreen.class);
        i.putExtra("playerId", this.playersId);
        startActivity(i);
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
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
