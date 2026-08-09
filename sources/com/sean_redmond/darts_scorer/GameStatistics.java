package com.sean_redmond.darts_scorer;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;

/* JADX INFO: loaded from: classes.dex */
public class GameStatistics extends ActionBarActivity implements ActionBar.TabListener {
    private SectionsPagerAdapter mSectionsPagerAdapter;
    private ViewPager mViewPager;

    @Override // android.support.v7.app.ActionBarActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game_statistics);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        getSupportActionBar().setDisplayShowHomeEnabled(false);
        this.mSectionsPagerAdapter = new SectionsPagerAdapter(getSupportFragmentManager());
        this.mViewPager = (ViewPager) findViewById(R.id.container);
        this.mViewPager.setAdapter(this.mSectionsPagerAdapter);
        final ActionBar actionBar = getSupportActionBar();
        actionBar.setNavigationMode(2);
        this.mViewPager.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.sean_redmond.darts_scorer.GameStatistics.1
            @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                actionBar.setSelectedNavigationItem(position);
            }
        });
        for (int i = 0; i < this.mSectionsPagerAdapter.getCount(); i++) {
            actionBar.addTab(actionBar.newTab().setText(this.mSectionsPagerAdapter.getPageTitle(i)).setTabListener(this));
        }
    }

    @Override // android.support.v7.app.ActionBar.TabListener
    public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        this.mViewPager.setCurrentItem(tab.getPosition());
    }

    @Override // android.support.v7.app.ActionBar.TabListener
    public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    @Override // android.support.v7.app.ActionBar.TabListener
    public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    public class SectionsPagerAdapter extends FragmentPagerAdapter {
        public SectionsPagerAdapter(FragmentManager fm) {
            super(fm);
        }

        @Override // android.support.v4.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            switch (position) {
                case 0:
                    return new Tab1MainGameStats();
                case 1:
                    Tab2DartsPerLeg tab2 = new Tab2DartsPerLeg();
                    return tab2;
                default:
                    return null;
            }
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // android.support.v4.view.PagerAdapter
        public CharSequence getPageTitle(int position) {
            switch (position) {
                case 0:
                    return "General";
                case 1:
                    return "Darts per leg";
                default:
                    return null;
            }
        }
    }
}
