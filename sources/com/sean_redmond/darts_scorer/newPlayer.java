package com.sean_redmond.darts_scorer;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class newPlayer extends ActionBarActivity {
    DatabaseHelper dbh;
    Button enterNameButton;
    EditText newPlayerName;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_player);
        this.dbh = new DatabaseHelper(this);
        this.newPlayerName = (EditText) findViewById(R.id.newPlayerName);
        this.enterNameButton = (Button) findViewById(R.id.enterNameButton);
        inputName();
    }

    public void inputName() {
        this.enterNameButton.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.newPlayer.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (newPlayer.this.newPlayerName.getText().toString().equals("")) {
                    Toast.makeText(newPlayer.this, "No name added. Please try again.", 1).show();
                    return;
                }
                boolean isInserted = newPlayer.this.dbh.insertPlayer(newPlayer.this.newPlayerName.getText().toString());
                if (isInserted) {
                    Toast.makeText(newPlayer.this, "Player Inserted", 1).show();
                    newPlayer.this.newPlayerName.setText("");
                } else {
                    Toast.makeText(newPlayer.this, "Player NOT Inserted", 1).show();
                }
            }
        });
    }

    public void onClickCancel(View view) {
        finish();
    }
}
