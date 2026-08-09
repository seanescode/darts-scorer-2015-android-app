package com.sean_redmond.darts_scorer;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Tab2DartsPerLeg extends Fragment {
    ArrayList<Integer> dartsThrownToWinLeg;
    String nameP1;
    String nameP2;
    TextView p1Name;
    TextView p2Name;
    ArrayList<String> playerToWinLeg;
    TableLayout tableLayout;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.tab2_darts_per_leg_stats, container, false);
        this.p1Name = (TextView) rootView.findViewById(R.id.player1Name);
        this.p2Name = (TextView) rootView.findViewById(R.id.player2Name);
        this.tableLayout = (TableLayout) rootView.findViewById(R.id.dartsPerLegTableLayout);
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null) {
            this.dartsThrownToWinLeg = extras.getIntegerArrayList("dartsThrownforWinningLeg");
            this.playerToWinLeg = extras.getStringArrayList("playerToWinLegList");
            this.nameP1 = extras.getString("p1sName");
            this.nameP2 = extras.getString("p2sName");
        }
        this.p1Name.setText("" + this.nameP1);
        this.p2Name.setText("" + this.nameP2);
        displayDartsPerLegValues();
        return rootView;
    }

    public void displayDartsPerLegValues() {
        for (int i = 0; i < this.dartsThrownToWinLeg.size(); i++) {
            ViewGroup.LayoutParams trparams = new TableLayout.LayoutParams(-1, -2);
            TableRow tableRow = new TableRow(getActivity());
            tableRow.setLayoutParams(trparams);
            if (i % 2 == 0) {
                tableRow.setBackgroundResource(R.color.lightBlue);
            } else {
                tableRow.setBackgroundResource(R.color.veryLightBlue);
            }
            TextView legNum = new TextView(getActivity());
            legNum.setLayoutParams(new TableRow.LayoutParams(-1, -2, 1.0f));
            legNum.setGravity(17);
            legNum.setText("" + (i + 1));
            legNum.setTextAppearance(getActivity(), android.R.style.TextAppearance.Large);
            tableRow.addView(legNum);
            TextView player1DartsThrown = new TextView(getActivity());
            player1DartsThrown.setLayoutParams(new TableRow.LayoutParams(-1, -2, 1.0f));
            player1DartsThrown.setGravity(17);
            if (this.playerToWinLeg.get(i).equals(this.nameP1)) {
                player1DartsThrown.setText(this.dartsThrownToWinLeg.get(i).toString());
            } else {
                player1DartsThrown.setText("-");
            }
            player1DartsThrown.setTextAppearance(getActivity(), android.R.style.TextAppearance.Large);
            tableRow.addView(player1DartsThrown);
            TextView player2DartsThrown = new TextView(getActivity());
            player2DartsThrown.setGravity(17);
            player2DartsThrown.setLayoutParams(new TableRow.LayoutParams(-1, -2, 1.0f));
            if (this.playerToWinLeg.get(i).equals(this.nameP2)) {
                player2DartsThrown.setText(this.dartsThrownToWinLeg.get(i).toString());
            } else {
                player2DartsThrown.setText("-");
            }
            player2DartsThrown.setTextAppearance(getActivity(), android.R.style.TextAppearance.Large);
            tableRow.addView(player2DartsThrown);
            this.tableLayout.addView(tableRow);
        }
    }
}
