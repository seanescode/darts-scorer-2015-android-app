package com.sean_redmond.darts_scorer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class play_game extends ActionBarActivity {
    public static final String NAME_PREF = "namePreference";
    Button checkoutIn1;
    Button checkoutIn2;
    Button checkoutIn3;
    int cpuAverageScore;
    TextView currentlyP1Icon;
    TextView currentlyP2Icon;
    TextView dartsThrownP1;
    TextView dartsThrownP2;
    ImageButton enterPressed;
    PublisherInterstitialAd interstitialAd;
    boolean isCpuModeOn;
    boolean isTimerOn;
    int legsToPlay;
    TextView legsWonP1;
    TextView legsWonP2;
    TextView numberOfLegs;
    String p1Name;
    String p2Name;
    TextView player1Name;
    TextView player2Name;
    TextView remainingP1;
    TextView remainingP2;
    int scoreHit;
    TextView scored;
    int startingScore;
    TextView textViewTime;
    int timePerShot;
    int timeRunOutPenalty;
    CounterClass timer;
    int player = 0;
    int playerWithThrow = 0;
    int legsPlayed = 0;
    int dartsToCheckout = 3;
    boolean pressedResumeGame = false;
    ArrayList<Integer> dartsThrownToWinLeg = new ArrayList<>();
    ArrayList<String> playerToWinLeg = new ArrayList<>();
    int[] scoreLeft = new int[2];
    int[] playerId = new int[2];
    int[] pointsScored = {0, 0};
    int[] dartsThrown = {0, 0};
    int[] dartsThrownInLeg = {0, 0};
    int[] sixtyPlusScores = {0, 0};
    int[] tonPlusScores = {0, 0};
    int[] tonFortyPlusScores = {0, 0};
    int[] tonEightyScores = {0, 0};
    int[] legsWon = {0, 0};
    int[] bestScore = {0, 0};
    int[] highestCheckout = {0, 0};
    float[] firstNineAve = {0.0f, 0.0f};
    int[] pointsScoredInFirstNine = {0, 0};
    int[] dartsThrownInFirstNine = {0, 0};

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_play_game);
        AdView mAdView = (AdView) findViewById(R.id.adView);
        AdRequest adRequest = new AdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR).addTestDevice("0D214B27C8CF2E2138243E80695D4CD6").addTestDevice("374B7BE5730416B01114B3E01B782252").build();
        mAdView.loadAd(adRequest);
        this.interstitialAd = new PublisherInterstitialAd(this);
        this.interstitialAd.setAdUnitId(getResources().getString(R.string.statsInterstitialAd));
        this.interstitialAd.setAdListener(new AdListener() { // from class: com.sean_redmond.darts_scorer.play_game.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                play_game.this.reloadTheInterstitial();
            }
        });
        reloadTheInterstitial();
        this.textViewTime = (TextView) findViewById(R.id.textViewTime);
        this.scored = (TextView) findViewById(R.id.scoredTxtBox);
        this.remainingP1 = (TextView) findViewById(R.id.remainingP1TxtBox);
        this.remainingP2 = (TextView) findViewById(R.id.remainingP2TxtBox);
        this.legsWonP1 = (TextView) findViewById(R.id.legsP1TxtBox);
        this.legsWonP2 = (TextView) findViewById(R.id.legsP2TxtBox);
        this.numberOfLegs = (TextView) findViewById(R.id.legsToPlayDisplay);
        this.player1Name = (TextView) findViewById(R.id.player1Display);
        this.player2Name = (TextView) findViewById(R.id.player2Display);
        this.currentlyP1Icon = (TextView) findViewById(R.id.currentlyP1Icon);
        this.currentlyP2Icon = (TextView) findViewById(R.id.currentlyP2Icon);
        this.enterPressed = (ImageButton) findViewById(R.id.enter_button);
        this.checkoutIn1 = (Button) findViewById(R.id.coIn1);
        this.checkoutIn2 = (Button) findViewById(R.id.coIn2);
        this.checkoutIn3 = (Button) findViewById(R.id.coIn3);
        this.dartsThrownP1 = (TextView) findViewById(R.id.dartsThrownP1TxtBox);
        this.dartsThrownP2 = (TextView) findViewById(R.id.dartsThrownP2TxtBox);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.timePerShot = extras.getInt("timerStartFrom");
            this.timeRunOutPenalty = extras.getInt("timeUpPenalty");
            this.isTimerOn = extras.getBoolean("timerModeSelection");
            this.legsToPlay = extras.getInt("legsToPlay");
            this.startingScore = extras.getInt("scoreStartFrom");
            this.p1Name = extras.getString("p1Name");
            this.p2Name = extras.getString("p2Name");
            this.playerId[0] = extras.getInt("p1Id");
            this.playerId[1] = extras.getInt("p2Id");
            this.isCpuModeOn = extras.getBoolean("isPlayCpuMode");
            this.cpuAverageScore = extras.getInt("cpuAverageScore");
            this.pressedResumeGame = extras.getBoolean("pressedResumeMatch");
        }
        this.checkoutIn1.setEnabled(false);
        this.checkoutIn2.setEnabled(false);
        this.checkoutIn3.setEnabled(true);
        this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
        onEnterClicked();
        checkoutSelection();
        this.timer = new CounterClass(this.timePerShot * 1000, 1000L);
        Typeface type = Typeface.createFromAsset(getAssets(), "fonts/digitalClockFont.ttf");
        this.textViewTime.setTypeface(type);
        if (this.pressedResumeGame) {
            continueGame();
            return;
        }
        this.scoreLeft[0] = this.startingScore;
        this.scoreLeft[1] = this.startingScore;
        this.scored.setText("0");
        this.legsWonP1.setText("0");
        this.legsWonP2.setText("0");
        this.remainingP1.setText(String.valueOf(this.startingScore));
        this.remainingP2.setText(String.valueOf(this.startingScore));
        this.dartsThrownP1.setText("0");
        this.dartsThrownP2.setText("0");
        this.player1Name.setText(this.p1Name);
        this.player2Name.setText(this.p2Name);
        legsToPlayTitleMessage();
        setPlayerPointerIcon();
        if (this.isTimerOn) {
            startTimerDialog();
            this.textViewTime.setVisibility(0);
        }
    }

    public void onEnterClicked() {
        this.enterPressed.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                play_game.this.humanPlayerTurn();
                if (play_game.this.isCpuModeOn) {
                    play_game.this.cpuTurn();
                }
                play_game.this.disableInvalidDartsThrowntoCheckoutOptions();
            }
        });
    }

    public void humanPlayerTurn() {
        if (isValidScore()) {
            updateScoreLeft();
            clearScoreInputted();
            updateStatistics();
            if (this.scoreLeft[this.player] == 0) {
                updateHighestCheckout();
                incrementLegsWonAndPlayed();
                updateDartsThrownToWinLeg();
                updatePlayerToWinLeg();
                if (this.legsWon[this.player] == this.legsToPlay) {
                    insertStatsOnGameComplete();
                    displayMessageOnGameComplete();
                    navigateToStats();
                    return;
                } else {
                    switchPlayerWithThrow();
                    setPlayerPointerIcon();
                    resetScoreboardOnLegCompletion();
                }
            } else {
                playSoundEffects();
                switchPlayer();
                setPlayerPointerIcon();
            }
            if (this.isTimerOn) {
                startClock();
                return;
            }
            return;
        }
        showInvalidScoreMessage();
        clearScoreInputted();
    }

    public void cpuTurn() {
        if (this.player == 1) {
            if (this.scoreLeft[this.player] <= 100) {
                cpuCheckoutScore();
                cpuScoreMessage();
                updateScoreLeft();
                updateStatistics();
                if (this.scoreLeft[this.player] == 0) {
                    updateHighestCheckout();
                    incrementLegsWonAndPlayed();
                    updatePlayerToWinLeg();
                    updateDartsThrownToWinLeg();
                    resetScoreboardOnLegCompletion();
                    if (this.legsWon[this.player] == this.legsToPlay) {
                        insertStatsOnGameComplete();
                        displayMessageOnGameComplete();
                        navigateToStats();
                        return;
                    }
                    switchPlayerWithThrow();
                    return;
                }
                return;
            }
            cpuNonCheckoutScore();
            cpuScoreMessage();
            updateScoreLeft();
            updateStatistics();
            switchPlayer();
        }
    }

    public void updateHighestCheckout() {
        if (this.scoreHit > this.highestCheckout[this.player]) {
            this.highestCheckout[this.player] = this.scoreHit;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadTheInterstitial() {
        PublisherAdRequest adRequest = new PublisherAdRequest.Builder().addTestDevice("0D214B27C8CF2E2138243E80695D4CD6").addTestDevice(PublisherAdRequest.DEVICE_ID_EMULATOR).build();
        this.interstitialAd.loadAd(adRequest);
    }

    public void continueGame() {
        SharedPreferences prefs = getSharedPreferences("namePreference", 0);
        this.p1Name = prefs.getString("p1sName", "Player one");
        this.p2Name = prefs.getString("p2sName", "Player two");
        this.playerId[0] = prefs.getInt("plyr1Id", 0);
        this.playerId[1] = prefs.getInt("plyr2Id", 0);
        this.legsWon[0] = prefs.getInt("legsWonP1", 0);
        this.legsWon[1] = prefs.getInt("legsWonP2", 0);
        this.scoreLeft[0] = prefs.getInt("p1scoreLeft", 501);
        this.scoreLeft[1] = prefs.getInt("p2scoreLeft", 501);
        this.legsPlayed = prefs.getInt("legsPlayed", 0);
        this.legsToPlay = prefs.getInt("totalLegsToPlay", 3);
        this.player = prefs.getInt("playerThrowing", 0);
        this.playerWithThrow = prefs.getInt("playerWithThrow", 0);
        this.pointsScored[0] = prefs.getInt("pointsScrdP1", 0);
        this.pointsScored[1] = prefs.getInt("pointsScrdP2", 0);
        this.dartsThrown[0] = prefs.getInt("dartsThrownP1", 0);
        this.dartsThrown[1] = prefs.getInt("dartsThrownP2", 0);
        this.startingScore = prefs.getInt("startScore", 501);
        this.sixtyPlusScores[0] = prefs.getInt("sixtyPlusScoresP1", 0);
        this.sixtyPlusScores[1] = prefs.getInt("sixtyPlusScoresP2", 0);
        this.tonPlusScores[0] = prefs.getInt("tonPlusScoresP1", 0);
        this.tonPlusScores[1] = prefs.getInt("tonPlusScoresP2", 0);
        this.tonFortyPlusScores[0] = prefs.getInt("tonFortyPlusScoresP1", 0);
        this.tonFortyPlusScores[1] = prefs.getInt("tonFortyPlusScoresP2", 0);
        this.tonEightyScores[0] = prefs.getInt("tonEightyScoresP1", 0);
        this.tonEightyScores[1] = prefs.getInt("tonEightyScoresP2", 0);
        this.isTimerOn = prefs.getBoolean("isPlayingTimer", false);
        this.timePerShot = prefs.getInt("timePerShot", 10);
        this.timeRunOutPenalty = prefs.getInt("timeoutPeno", 100);
        this.isCpuModeOn = prefs.getBoolean("isPlayingCpu", false);
        this.cpuAverageScore = prefs.getInt("cpuAvePoints", 35);
        this.dartsThrownInLeg[0] = prefs.getInt("dartsThrownInLegP1", 0);
        this.dartsThrownInLeg[1] = prefs.getInt("dartsThrownInLegP2", 0);
        this.bestScore[0] = prefs.getInt("highestScoreP1", 0);
        this.bestScore[1] = prefs.getInt("highestScoreP2", 0);
        this.firstNineAve[0] = prefs.getFloat("firstNineAvgP1", 0.0f);
        this.firstNineAve[1] = prefs.getFloat("firstNineAvgP2", 0.0f);
        this.pointsScoredInFirstNine[0] = prefs.getInt("pointsScoredInFirstNineP1", 0);
        this.pointsScoredInFirstNine[1] = prefs.getInt("pointsScoredInFirstNineP2", 0);
        this.dartsThrownInFirstNine[0] = prefs.getInt("dartsThrownInFirstNineP1", 0);
        this.dartsThrownInFirstNine[1] = prefs.getInt("dartsThrownInFirstNineP2", 0);
        this.highestCheckout[0] = prefs.getInt("highestCheckoutP1", 0);
        this.highestCheckout[1] = prefs.getInt("highestCheckoutP2", 0);
        this.timer = new CounterClass(this.timePerShot * 1000, 1000L);
        if (this.isTimerOn) {
            startTimerDialog();
            this.textViewTime.setVisibility(0);
        }
        this.player1Name.setText(this.p1Name);
        this.player2Name.setText(this.p2Name);
        this.legsWonP1.setText(String.valueOf(this.legsWon[0]));
        this.legsWonP2.setText(String.valueOf(this.legsWon[1]));
        this.remainingP1.setText(String.valueOf(this.scoreLeft[0]));
        this.remainingP2.setText(String.valueOf(this.scoreLeft[1]));
        this.scored.setText("0");
        setPlayerPointerIcon();
        legsToPlayTitleMessage();
        disableInvalidDartsThrowntoCheckoutOptions();
        this.dartsThrownP1.setText(String.valueOf(this.dartsThrownInLeg[0]));
        this.dartsThrownP2.setText(String.valueOf(this.dartsThrownInLeg[1]));
        TinyDB tinydb = new TinyDB(getApplicationContext());
        this.dartsThrownToWinLeg = tinydb.getListInt("dartsThrownToWinLeg", this.dartsThrownToWinLeg);
        this.playerToWinLeg = tinydb.getListString("playerToWinLeg");
    }

    public void legsToPlayTitleMessage() {
        if (this.legsToPlay == 1) {
            this.numberOfLegs.setText("First to " + this.legsToPlay + " leg");
        } else {
            this.numberOfLegs.setText("First to " + this.legsToPlay + " legs");
        }
    }

    public void checkoutSelection() {
        this.checkoutIn1.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                play_game.this.dartsToCheckout = 1;
                play_game.this.checkoutIn1.setBackgroundColor(Color.parseColor("#6face7"));
                play_game.this.checkoutIn2.setBackgroundColor(-1);
                play_game.this.checkoutIn3.setBackgroundColor(-1);
            }
        });
        this.checkoutIn2.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                play_game.this.dartsToCheckout = 2;
                play_game.this.checkoutIn1.setBackgroundColor(-1);
                play_game.this.checkoutIn2.setBackgroundColor(Color.parseColor("#6face7"));
                play_game.this.checkoutIn3.setBackgroundColor(-1);
            }
        });
        this.checkoutIn3.setOnClickListener(new View.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                play_game.this.dartsToCheckout = 3;
                play_game.this.checkoutIn1.setBackgroundColor(-1);
                play_game.this.checkoutIn2.setBackgroundColor(-1);
                play_game.this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
            }
        });
    }

    public void inputScore(View sender) {
        Button numberButton = (Button) sender;
        if (this.scored.getText().length() != 3) {
            if (this.scored.getText().toString().equals("0")) {
                this.scored.setText(numberButton.getText());
            } else {
                this.scored.append(numberButton.getText());
            }
            if (this.isTimerOn) {
                this.timer.cancel();
                this.enterPressed.setEnabled(true);
                this.enterPressed.setBackgroundColor(Color.parseColor("#6face7"));
            }
        }
    }

    public boolean isValidScore() {
        boolean isScoreValid = true;
        this.scoreHit = Integer.parseInt(this.scored.getText().toString());
        if (this.scoreHit > 180 || this.scoreHit > this.scoreLeft[this.player] || this.scoreHit + 1 == this.scoreLeft[this.player]) {
            isScoreValid = false;
        }
        int[] invalidScores = {179, 178, 176, 175, 173, 172, 169, 168, 166, 165, 163, 162};
        for (int i : invalidScores) {
            if (this.scoreHit == i) {
                isScoreValid = false;
            }
        }
        int[] invalidCheckoutScores = {159, 171, 174, 177, 180};
        for (int i2 : invalidCheckoutScores) {
            if (this.scoreLeft[this.player] == this.scoreHit && i2 == this.scoreHit) {
                isScoreValid = false;
            }
        }
        return isScoreValid;
    }

    public void showInvalidScoreMessage() {
        Toast toast = Toast.makeText(getApplicationContext(), "Invalid score, try again!", 0);
        toast.setGravity(17, 0, 0);
        toast.show();
    }

    public void updateScoreLeft() {
        this.scoreLeft[this.player] = this.scoreLeft[this.player] - this.scoreHit;
        if (this.player == 0) {
            this.remainingP1.setText(String.valueOf(this.scoreLeft[this.player]));
        } else {
            this.remainingP2.setText(String.valueOf(this.scoreLeft[this.player]));
        }
    }

    public void clearScoreInputted() {
        this.scored.setText("0");
    }

    public void playSoundEffects() {
        SoundPool sp = new SoundPool(5, 3, 0);
        if (this.scoreHit == 180) {
            int soundId = sp.load(this, R.raw.russ_bray_180, 1);
            sp.play(soundId, 1.0f, 1.0f, 0, 0, 1.0f);
            MediaPlayer mPlayer = MediaPlayer.create(this, R.raw.russ_bray_180);
            mPlayer.start();
            return;
        }
        if (this.scoreHit == 140) {
            int soundId2 = sp.load(this, R.raw.russ_bray_140, 1);
            sp.play(soundId2, 1.0f, 1.0f, 0, 0, 1.0f);
            MediaPlayer mPlayer2 = MediaPlayer.create(this, R.raw.russ_bray_140);
            mPlayer2.start();
            return;
        }
        if (this.scoreHit == 100) {
            int soundId3 = sp.load(this, R.raw.russ_bray_100, 1);
            sp.play(soundId3, 1.0f, 1.0f, 0, 0, 1.0f);
            MediaPlayer mPlayer3 = MediaPlayer.create(this, R.raw.russ_bray_100);
            mPlayer3.start();
            return;
        }
        if (this.scoreHit == 60) {
            int soundId4 = sp.load(this, R.raw.russ_bray_60, 1);
            sp.play(soundId4, 1.0f, 1.0f, 0, 0, 1.0f);
            MediaPlayer mPlayer4 = MediaPlayer.create(this, R.raw.russ_bray_60);
            mPlayer4.start();
        }
    }

    public void updateStatistics() {
        if (this.scoreHit >= 60 && this.scoreHit < 100) {
            int[] iArr = this.sixtyPlusScores;
            int i = this.player;
            iArr[i] = iArr[i] + 1;
        } else if (this.scoreHit >= 100 && this.scoreHit < 140) {
            int[] iArr2 = this.tonPlusScores;
            int i2 = this.player;
            iArr2[i2] = iArr2[i2] + 1;
        } else if (this.scoreHit >= 140 && this.scoreHit < 180) {
            int[] iArr3 = this.tonFortyPlusScores;
            int i3 = this.player;
            iArr3[i3] = iArr3[i3] + 1;
        } else if (this.scoreHit == 180) {
            int[] iArr4 = this.tonEightyScores;
            int i4 = this.player;
            iArr4[i4] = iArr4[i4] + 1;
        }
        this.pointsScored[this.player] = this.pointsScored[this.player] + this.scoreHit;
        if (this.scoreLeft[this.player] != 0) {
            this.dartsThrown[this.player] = this.dartsThrown[this.player] + 3;
            this.dartsThrownInLeg[this.player] = this.dartsThrownInLeg[this.player] + 3;
        } else {
            this.dartsThrown[this.player] = this.dartsThrown[this.player] + this.dartsToCheckout;
            this.dartsThrownInLeg[this.player] = this.dartsThrownInLeg[this.player] + this.dartsToCheckout;
        }
        if (this.player == 0) {
            this.dartsThrownP1.setText(String.valueOf(this.dartsThrownInLeg[0]));
        } else {
            this.dartsThrownP2.setText(String.valueOf(this.dartsThrownInLeg[1]));
        }
        if (this.scoreHit > this.bestScore[this.player] && (this.player == 0 || this.player == 1)) {
            this.bestScore[this.player] = this.scoreHit;
        }
        if (this.dartsThrownInLeg[this.player] <= 9) {
            int[] iArr5 = this.pointsScoredInFirstNine;
            int i5 = this.player;
            iArr5[i5] = iArr5[i5] + this.scoreHit;
            int[] iArr6 = this.dartsThrownInFirstNine;
            int i6 = this.player;
            iArr6[i6] = iArr6[i6] + 3;
            if (this.player == 0) {
                this.firstNineAve[0] = (this.pointsScoredInFirstNine[0] / this.dartsThrownInFirstNine[0]) * 3.0f;
            } else {
                this.firstNineAve[1] = (this.pointsScoredInFirstNine[1] / this.dartsThrownInFirstNine[1]) * 3.0f;
            }
        }
    }

    public void incrementLegsWonAndPlayed() {
        int[] iArr = this.legsWon;
        int i = this.player;
        iArr[i] = iArr[i] + 1;
        if (this.player == 0) {
            this.legsWonP1.setText(String.valueOf(this.legsWon[this.player]));
        } else {
            this.legsWonP2.setText(String.valueOf(this.legsWon[this.player]));
        }
        this.legsPlayed++;
    }

    public void displayMessageOnGameComplete() {
        Toast toast = Toast.makeText(getApplicationContext(), "Game completed!", 1);
        toast.setGravity(80, 0, 0);
        toast.show();
        finish();
    }

    public void insertStatsOnGameComplete() {
        DatabaseHelper dbh = new DatabaseHelper(this);
        if (this.isCpuModeOn) {
            dbh.insertStats(this.playerId[0], this.legsPlayed, this.legsWon[0], this.sixtyPlusScores[0], this.tonPlusScores[0], this.tonFortyPlusScores[0], this.tonEightyScores[0], this.pointsScored[0], this.dartsThrown[0]);
            return;
        }
        for (int x = 0; x < 2; x++) {
            dbh.insertStats(this.playerId[x], this.legsPlayed, this.legsWon[x], this.sixtyPlusScores[x], this.tonPlusScores[x], this.tonFortyPlusScores[x], this.tonEightyScores[x], this.pointsScored[x], this.dartsThrown[x]);
        }
    }

    public void navigateToStats() {
        Intent i = new Intent(getApplicationContext(), (Class<?>) GameStatistics.class);
        i.putExtra("sixtyPlusScoresP1", this.sixtyPlusScores[0]);
        i.putExtra("sixtyPlusScoresP2", this.sixtyPlusScores[1]);
        i.putExtra("tonPlusScoresP1", this.tonPlusScores[0]);
        i.putExtra("tonPlusScoresP2", this.tonPlusScores[1]);
        i.putExtra("tonFortyPlusScoresP1", this.tonFortyPlusScores[0]);
        i.putExtra("tonFortyPlusScoresP2", this.tonFortyPlusScores[1]);
        i.putExtra("tonEightyScoresP1", this.tonEightyScores[0]);
        i.putExtra("tonEightyScoresP2", this.tonEightyScores[1]);
        i.putExtra("dartsThrownP1", this.dartsThrown[0]);
        i.putExtra("dartsThrownP2", this.dartsThrown[1]);
        i.putExtra("pointsScoredP1", this.pointsScored[0]);
        i.putExtra("pointsScoredP2", this.pointsScored[1]);
        i.putExtra("legsWonP1", this.legsWon[0]);
        i.putExtra("legsWonP2", this.legsWon[1]);
        i.putExtra("p1sName", this.p1Name);
        i.putExtra("p2sName", this.p2Name);
        i.putExtra("dartsThrownforWinningLeg", this.dartsThrownToWinLeg);
        i.putExtra("playerToWinLegList", this.playerToWinLeg);
        i.putExtra("bestScoreP1", this.bestScore[0]);
        i.putExtra("bestScoreP2", this.bestScore[1]);
        i.putExtra("firstNineAveP1", this.firstNineAve[0]);
        i.putExtra("firstNineAveP2", this.firstNineAve[1]);
        i.putExtra("highestCheckoutP1", this.highestCheckout[0]);
        i.putExtra("highestCheckoutP2", this.highestCheckout[1]);
        startActivity(i);
        if (this.legsWon[this.player] == this.legsToPlay) {
            if (this.interstitialAd.isLoaded()) {
                this.interstitialAd.show();
            }
            resetScores();
        }
    }

    public void switchPlayerWithThrow() {
        if (this.playerWithThrow == 0) {
            this.player = 1;
            this.playerWithThrow = 1;
        } else {
            this.player = 0;
            this.playerWithThrow = 0;
        }
    }

    public void switchPlayer() {
        if (this.player == 0) {
            this.player = 1;
        } else {
            this.player = 0;
        }
    }

    public void setPlayerPointerIcon() {
        if (this.player == 0) {
            this.currentlyP1Icon.setVisibility(0);
            this.currentlyP2Icon.setVisibility(4);
        } else {
            this.currentlyP2Icon.setVisibility(0);
            this.currentlyP1Icon.setVisibility(4);
        }
    }

    public void resetScoreboardOnLegCompletion() {
        this.scoreLeft[0] = this.startingScore;
        this.scoreLeft[1] = this.startingScore;
        this.remainingP1.setText(String.valueOf(this.startingScore));
        this.remainingP2.setText(String.valueOf(this.startingScore));
        this.dartsThrownInLeg[0] = 0;
        this.dartsThrownInLeg[1] = 0;
        this.dartsThrownP1.setText("0");
        this.dartsThrownP2.setText("0");
    }

    public void disableInvalidDartsThrowntoCheckoutOptions() {
        if ((this.scoreLeft[this.player] <= 40 && this.scoreLeft[this.player] % 2 == 0) || this.scoreLeft[this.player] == 50) {
            this.checkoutIn1.setEnabled(true);
            this.checkoutIn2.setEnabled(true);
            this.checkoutIn3.setEnabled(true);
            this.checkoutIn1.setBackgroundColor(-1);
            this.checkoutIn2.setBackgroundColor(-1);
            this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
            this.dartsToCheckout = 3;
            return;
        }
        if (this.scoreLeft[this.player] < 99 || this.scoreLeft[this.player] == 100 || this.scoreLeft[this.player] == 101 || this.scoreLeft[this.player] == 104 || this.scoreLeft[this.player] == 107 || this.scoreLeft[this.player] == 110) {
            this.checkoutIn1.setEnabled(false);
            this.checkoutIn2.setEnabled(true);
            this.checkoutIn3.setEnabled(true);
            this.checkoutIn1.setBackgroundColor(-1);
            this.checkoutIn2.setBackgroundColor(-1);
            this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
            this.dartsToCheckout = 3;
            return;
        }
        this.checkoutIn1.setEnabled(false);
        this.checkoutIn2.setEnabled(false);
        this.checkoutIn3.setEnabled(true);
        this.checkoutIn1.setBackgroundColor(-1);
        this.checkoutIn2.setBackgroundColor(-1);
        this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
        this.dartsToCheckout = 3;
    }

    public void updateDartsThrownToWinLeg() {
        this.dartsThrownToWinLeg.add(Integer.valueOf(this.dartsThrownInLeg[this.player]));
    }

    public void cpuCheckoutScore() {
        Random r = new Random();
        int successfulCheckout = r.nextInt(2);
        if (successfulCheckout == 0) {
            this.scoreHit = this.scoreLeft[this.player];
        } else {
            this.scoreHit = r.nextInt(this.scoreLeft[this.player]) + 1;
        }
    }

    public void cpuNonCheckoutScore() {
        int max = this.cpuAverageScore + 30;
        int min = this.cpuAverageScore - 10;
        Random r = new Random();
        int variationScoringNum = r.nextInt(8);
        if (variationScoringNum == 0) {
            this.scoreHit = r.nextInt(180) + 1;
        } else {
            this.scoreHit = r.nextInt((max - min) + 1) + min;
        }
        while (true) {
            if (this.scoreHit > this.scoreLeft[this.player] || this.scoreHit + 1 == this.scoreLeft[this.player] || this.scoreHit == this.scoreLeft[this.player]) {
                this.scoreHit = r.nextInt(this.scoreLeft[this.player]) + 1;
            } else {
                return;
            }
        }
    }

    public void cpuScoreMessage() {
        Toast toast = Toast.makeText(getApplicationContext(), "CPU scores: " + this.scoreHit, 0);
        toast.setGravity(17, 0, 0);
        toast.show();
    }

    public void startClock() {
        this.timer.start();
        this.enterPressed.setEnabled(false);
        this.enterPressed.setBackgroundColor(Color.parseColor("#cfcecf"));
    }

    public void startTimerDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle("Press Start to Begin Timer");
        builder.setCancelable(false);
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(1);
        ImageView image = new ImageView(this);
        image.setImageResource(R.drawable.startclockimage1);
        layout.addView(image);
        builder.setView(layout);
        builder.setPositiveButton("Start", new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                play_game.this.startClock();
            }
        });
        builder.show();
    }

    public void timeUpDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setTitle(this.timeRunOutPenalty + " " + getResources().getString(R.string.timeoutMessage));
        builder.setCancelable(false);
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(1);
        ImageView image = new ImageView(this);
        image.setImageResource(R.drawable.timeup1);
        layout.addView(image);
        builder.setView(layout);
        builder.setPositiveButton(getResources().getString(R.string.startTimerForOpponentMessage), new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                play_game.this.humanPlayerTurn();
            }
        });
        try {
            builder.show();
        } catch (Exception e) {
        }
    }

    public void deleteClicked(View sender) {
        String scoreInputted = this.scored.getText().toString();
        if (scoreInputted.length() > 1) {
            this.scored.setText(scoreInputted.substring(0, scoreInputted.length() - 1));
        } else {
            this.scored.setText("0");
        }
    }

    public void resetScoresOptionDialog() {
        new AlertDialog.Builder(this, 4).setTitle("Restart Match?").setMessage("Are you sure you want to restart this match?").setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        }).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.sean_redmond.darts_scorer.play_game.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                play_game.this.resetScores();
                if (play_game.this.isTimerOn) {
                    play_game.this.timer.cancel();
                    play_game.this.startTimerDialog();
                }
            }
        }).setIcon(android.R.drawable.ic_dialog_alert).show();
    }

    public void resetScores() {
        for (int x = 0; x <= 1; x++) {
            this.scoreLeft[x] = this.startingScore;
            this.legsWon[x] = 0;
            this.sixtyPlusScores[x] = 0;
            this.tonPlusScores[x] = 0;
            this.tonFortyPlusScores[x] = 0;
            this.tonEightyScores[x] = 0;
            this.dartsThrown[x] = 0;
            this.pointsScored[x] = 0;
            this.dartsThrownInLeg[x] = 0;
            this.bestScore[x] = 0;
            this.highestCheckout[x] = 0;
            this.firstNineAve[x] = 0.0f;
            this.pointsScoredInFirstNine[x] = 0;
            this.dartsThrownInFirstNine[x] = 0;
        }
        this.dartsThrownToWinLeg.clear();
        this.playerToWinLeg.clear();
        this.legsPlayed = 0;
        this.scored.setText("0");
        this.remainingP1.setText(String.valueOf(this.startingScore));
        this.remainingP2.setText(String.valueOf(this.startingScore));
        this.legsWonP1.setText("0");
        this.legsWonP2.setText("0");
        this.dartsThrownP1.setText("0");
        this.dartsThrownP2.setText("0");
        this.player = 0;
        setPlayerPointerIcon();
        this.checkoutIn1.setEnabled(false);
        this.checkoutIn2.setEnabled(false);
        this.checkoutIn3.setEnabled(true);
        this.checkoutIn1.setBackgroundColor(-1);
        this.checkoutIn2.setBackgroundColor(-1);
        this.checkoutIn3.setBackgroundColor(Color.parseColor("#6face7"));
        this.dartsToCheckout = 3;
    }

    public void updatePlayerToWinLeg() {
        if (this.player == 0) {
            this.playerToWinLeg.add(this.p1Name);
        } else {
            this.playerToWinLeg.add(this.p2Name);
        }
    }

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        SharedPreferences.Editor editor = getSharedPreferences("namePreference", 0).edit();
        editor.putString("p1sName", this.p1Name);
        editor.putString("p2sName", this.p2Name);
        editor.putInt("plyr1Id", this.playerId[0]);
        editor.putInt("plyr2Id", this.playerId[1]);
        editor.putInt("legsWonP1", this.legsWon[0]);
        editor.putInt("legsWonP2", this.legsWon[1]);
        editor.putInt("legsPlayed", this.legsPlayed);
        editor.putInt("totalLegsToPlay", this.legsToPlay);
        editor.putInt("playerThrowing", this.player);
        editor.putInt("playerWithThrow", this.playerWithThrow);
        editor.putInt("p1scoreLeft", this.scoreLeft[0]);
        editor.putInt("p2scoreLeft", this.scoreLeft[1]);
        editor.putInt("pointsScrdP1", this.pointsScored[0]);
        editor.putInt("pointsScrdP2", this.pointsScored[1]);
        editor.putInt("dartsThrownP1", this.dartsThrown[0]);
        editor.putInt("dartsThrownP2", this.dartsThrown[1]);
        editor.putInt("startScore", this.startingScore);
        editor.putInt("sixtyPlusScoresP1", this.sixtyPlusScores[0]);
        editor.putInt("sixtyPlusScoresP2", this.sixtyPlusScores[1]);
        editor.putInt("tonPlusScoresP1", this.tonPlusScores[0]);
        editor.putInt("tonPlusScoresP2", this.tonPlusScores[1]);
        editor.putInt("tonFortyPlusScoresP1", this.tonFortyPlusScores[0]);
        editor.putInt("tonFortyPlusScoresP2", this.tonFortyPlusScores[1]);
        editor.putInt("tonEightyScoresP1", this.tonEightyScores[0]);
        editor.putInt("tonEightyScoresP2", this.tonEightyScores[1]);
        editor.putBoolean("isPlayingTimer", this.isTimerOn);
        editor.putInt("timePerShot", this.timePerShot);
        editor.putInt("timeoutPeno", this.timeRunOutPenalty);
        editor.putBoolean("isPlayingCpu", this.isCpuModeOn);
        editor.putInt("cpuAvePoints", this.cpuAverageScore);
        editor.putInt("dartsThrownInLegP1", this.dartsThrownInLeg[0]);
        editor.putInt("dartsThrownInLegP2", this.dartsThrownInLeg[1]);
        editor.putInt("highestScoreP1", this.bestScore[0]);
        editor.putInt("highestScoreP2", this.bestScore[1]);
        editor.putFloat("firstNineAvgP1", this.firstNineAve[0]);
        editor.putFloat("firstNineAvgP2", this.firstNineAve[1]);
        editor.putInt("pointsScoredInFirstNineP1", this.pointsScoredInFirstNine[0]);
        editor.putInt("pointsScoredInFirstNineP2", this.pointsScoredInFirstNine[1]);
        editor.putInt("dartsThrownInFirstNineP1", this.dartsThrownInFirstNine[0]);
        editor.putInt("dartsThrownInFirstNineP2", this.dartsThrownInFirstNine[1]);
        editor.putInt("highestCheckoutP1", this.highestCheckout[0]);
        editor.putInt("highestCheckoutP2", this.highestCheckout[1]);
        editor.apply();
        TinyDB tinydb = new TinyDB(getApplicationContext());
        tinydb.putListInt("dartsThrownToWinLeg", this.dartsThrownToWinLeg);
        tinydb.putListString("playerToWinLeg", this.playerToWinLeg);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.play_game_activity_actions, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_reset_scores /* 2131558686 */:
                resetScoresOptionDialog();
                return true;
            case R.id.action_stats /* 2131558687 */:
                navigateToStats();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public class CounterClass extends CountDownTimer {
        public CounterClass(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        @SuppressLint({"NewApi"})
        @TargetApi(9)
        public void onTick(long millisUntilFinished) {
            String secs = String.format("%02d", Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(millisUntilFinished) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(millisUntilFinished))));
            play_game.this.textViewTime.setText(secs);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            play_game.this.enterPressed.setEnabled(true);
            int[] iArr = play_game.this.scoreLeft;
            int i = play_game.this.player;
            iArr[i] = iArr[i] + play_game.this.timeRunOutPenalty;
            play_game.this.timeUpDialog();
        }
    }
}
