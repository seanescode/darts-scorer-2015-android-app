package com.sean_redmond.darts_scorer;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public class Tab1MainGameStats extends Fragment {
    TextView bestScoreP1;
    TextView bestScoreP2;
    TextView firstNineAvgP1;
    TextView firstNineAvgP2;
    TextView highestOutP1;
    TextView highestOutP2;
    TextView legsWinnerP1;
    TextView legsWinnerP2;
    TextView oneDartAveScoreP1;
    TextView oneDartAveScoreP2;
    TextView player1Name;
    TextView player2Name;
    TextView sixtyPlusScoresP1;
    TextView sixtyPlusScoresP2;
    TextView threeDartAveScoreP1;
    TextView threeDartAveScoreP2;
    TextView tonEightyScoresP1;
    TextView tonEightyScoresP2;
    TextView tonFortyPlusScoresP1;
    TextView tonFortyPlusScoresP2;
    TextView tonPlusScoresP1;
    TextView tonPlusScoresP2;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.tab1_main_game_stats, container, false);
        this.sixtyPlusScoresP1 = (TextView) rootView.findViewById(R.id.sixtyPlusP1);
        this.sixtyPlusScoresP2 = (TextView) rootView.findViewById(R.id.sixtyPlusP2);
        this.tonPlusScoresP1 = (TextView) rootView.findViewById(R.id.tonPlusP1);
        this.tonPlusScoresP2 = (TextView) rootView.findViewById(R.id.tonPlusP2);
        this.tonFortyPlusScoresP1 = (TextView) rootView.findViewById(R.id.tonFortyPlusP1);
        this.tonFortyPlusScoresP2 = (TextView) rootView.findViewById(R.id.tonFortyPlusP2);
        this.tonEightyScoresP1 = (TextView) rootView.findViewById(R.id.tonEightyPlusP1);
        this.tonEightyScoresP2 = (TextView) rootView.findViewById(R.id.tonEightyPlusP2);
        this.legsWinnerP1 = (TextView) rootView.findViewById(R.id.legsWonP1);
        this.legsWinnerP2 = (TextView) rootView.findViewById(R.id.legsWonP2);
        this.oneDartAveScoreP1 = (TextView) rootView.findViewById(R.id.oneDAveP1);
        this.oneDartAveScoreP2 = (TextView) rootView.findViewById(R.id.oneDAveP2);
        this.threeDartAveScoreP1 = (TextView) rootView.findViewById(R.id.threeDAveP1);
        this.threeDartAveScoreP2 = (TextView) rootView.findViewById(R.id.threeDAveP2);
        this.player1Name = (TextView) rootView.findViewById(R.id.textView);
        this.player2Name = (TextView) rootView.findViewById(R.id.textView3);
        this.bestScoreP1 = (TextView) rootView.findViewById(R.id.highScoreP1);
        this.bestScoreP2 = (TextView) rootView.findViewById(R.id.highScoreP2);
        this.firstNineAvgP1 = (TextView) rootView.findViewById(R.id.p1First9Avg);
        this.firstNineAvgP2 = (TextView) rootView.findViewById(R.id.p2First9Avg);
        this.highestOutP1 = (TextView) rootView.findViewById(R.id.highestCheckoutP1);
        this.highestOutP2 = (TextView) rootView.findViewById(R.id.highestCheckoutP2);
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null) {
            int sixtyPlusesP1 = extras.getInt("sixtyPlusScoresP1");
            int sixtyPlusesP2 = extras.getInt("sixtyPlusScoresP2");
            int tonPlusesP1 = extras.getInt("tonPlusScoresP1");
            int tonPlusesP2 = extras.getInt("tonPlusScoresP2");
            int tonFortyPlusesP1 = extras.getInt("tonFortyPlusScoresP1");
            int tonFortyPlusesP2 = extras.getInt("tonFortyPlusScoresP2");
            int tonEightyPlusesP1 = extras.getInt("tonEightyScoresP1");
            int tonEightyPlusesP2 = extras.getInt("tonEightyScoresP2");
            int legsVictoryP1 = extras.getInt("legsWonP1");
            int legsVictoryP2 = extras.getInt("legsWonP2");
            String nameP1 = extras.getString("p1sName");
            String nameP2 = extras.getString("p2sName");
            int highestScoreP1 = extras.getInt("bestScoreP1");
            int highestScoreP2 = extras.getInt("bestScoreP2");
            float firstNineAveP1 = extras.getFloat("firstNineAveP1");
            float firstNineAveP2 = extras.getFloat("firstNineAveP2");
            int highestCheckoutP1 = extras.getInt("highestCheckoutP1");
            int highestCheckoutP2 = extras.getInt("highestCheckoutP2");
            int dartsThrownP1 = extras.getInt("dartsThrownP1");
            int dartsThrownP2 = extras.getInt("dartsThrownP2");
            int pointsScoredP1 = extras.getInt("pointsScoredP1");
            int pointsScoredP2 = extras.getInt("pointsScoredP2");
            DecimalFormat df = new DecimalFormat("0.0");
            double oneDartAvgP1 = ((double) pointsScoredP1) / ((double) dartsThrownP1);
            double oneDartAvgP2 = ((double) pointsScoredP2) / ((double) dartsThrownP2);
            double threeDartAvgP1 = oneDartAvgP1 * 3.0d;
            double threeDartAvgP2 = oneDartAvgP2 * 3.0d;
            this.sixtyPlusScoresP1.setText("" + sixtyPlusesP1);
            this.sixtyPlusScoresP2.setText("" + sixtyPlusesP2);
            this.tonPlusScoresP1.setText("" + tonPlusesP1);
            this.tonPlusScoresP2.setText("" + tonPlusesP2);
            this.tonFortyPlusScoresP1.setText("" + tonFortyPlusesP1);
            this.tonFortyPlusScoresP2.setText("" + tonFortyPlusesP2);
            this.tonEightyScoresP1.setText("" + tonEightyPlusesP1);
            this.tonEightyScoresP2.setText("" + tonEightyPlusesP2);
            this.legsWinnerP1.setText("" + legsVictoryP1);
            this.legsWinnerP2.setText("" + legsVictoryP2);
            this.player1Name.setText("" + nameP1);
            this.player2Name.setText("" + nameP2);
            this.bestScoreP1.setText(String.valueOf(highestScoreP1));
            this.bestScoreP2.setText(String.valueOf(highestScoreP2));
            this.firstNineAvgP1.setText("" + df.format(firstNineAveP1));
            this.firstNineAvgP2.setText(String.valueOf(df.format(firstNineAveP2)));
            this.highestOutP1.setText(String.valueOf(highestCheckoutP1));
            this.highestOutP2.setText(String.valueOf(highestCheckoutP2));
            if (dartsThrownP1 == 0) {
                this.oneDartAveScoreP1.setText("0");
                this.threeDartAveScoreP1.setText("0");
            } else {
                this.oneDartAveScoreP1.setText("" + df.format(oneDartAvgP1));
                this.threeDartAveScoreP1.setText("" + df.format(threeDartAvgP1));
            }
            if (dartsThrownP2 == 0) {
                this.oneDartAveScoreP2.setText("0");
                this.threeDartAveScoreP2.setText("0");
            } else {
                this.oneDartAveScoreP2.setText("" + df.format(oneDartAvgP2));
                this.threeDartAveScoreP2.setText("" + df.format(threeDartAvgP2));
            }
        }
        return rootView;
    }
}
