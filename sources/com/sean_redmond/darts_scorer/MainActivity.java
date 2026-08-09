package com.sean_redmond.darts_scorer;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends ActionBarActivity {
    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClickGoToSelectPlayer(View view) {
        Intent i = new Intent(this, (Class<?>) SelectPlayer.class);
        startActivity(i);
    }

    public void onClickGoToManagePlayers(View view) {
        Intent i = new Intent(this, (Class<?>) ManagePlayers.class);
        startActivity(i);
    }

    public void onClickResumeGame(View view) {
        Intent i = new Intent(this, (Class<?>) play_game.class);
        i.putExtra("pressedResumeMatch", true);
        startActivity(i);
    }
}
