###### Class com.sean_redmond.darts_scorer.GameStatistics (com.sean_redmond.darts_scorer.GameStatistics)
.class public Lcom/sean_redmond/darts_scorer/GameStatistics;
.super Landroid/support/v7/app/ActionBarActivity;
.source "GameStatistics.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;
    }
.end annotation


# instance fields
.field private mSectionsPagerAdapter:Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f040018

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/GameStatistics;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/GameStatistics;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/GameStatistics;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 29
    new-instance v2, Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/GameStatistics;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;-><init>(Lcom/sean_redmond/darts_scorer/GameStatistics;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mSectionsPagerAdapter:Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

    .line 32
    const v2, 0x7f0d0058

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/GameStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 33
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mSectionsPagerAdapter:Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/GameStatistics;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 43
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/sean_redmond/darts_scorer/GameStatistics$1;

    invoke-direct {v3, p0, v0}, Lcom/sean_redmond/darts_scorer/GameStatistics$1;-><init>(Lcom/sean_redmond/darts_scorer/GameStatistics;Landroid/support/v7/app/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mSectionsPagerAdapter:Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

    invoke-virtual {v2}, Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mSectionsPagerAdapter:Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;

    .line 58
    invoke-virtual {v3, v1}, Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 62
    :cond_68
    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 78
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 5
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/GameStatistics;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 70
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 74
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.GameStatistics.AnonymousClass1 (com.sean_redmond.darts_scorer.GameStatistics$1)
.class Lcom/sean_redmond/darts_scorer/GameStatistics$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "GameStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/GameStatistics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/GameStatistics;

.field final synthetic val$actionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/GameStatistics;Landroid/support/v7/app/ActionBar;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/GameStatistics;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/GameStatistics$1;->this$0:Lcom/sean_redmond/darts_scorer/GameStatistics;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/GameStatistics$1;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/GameStatistics$1;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 47
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.GameStatistics.SectionsPagerAdapter (com.sean_redmond.darts_scorer.GameStatistics$SectionsPagerAdapter)
.class public Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GameStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sean_redmond/darts_scorer/GameStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/GameStatistics;


# direct methods
.method public constructor <init>(Lcom/sean_redmond/darts_scorer/GameStatistics;Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/GameStatistics;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/GameStatistics$SectionsPagerAdapter;->this$0:Lcom/sean_redmond/darts_scorer/GameStatistics;

    .line 88
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_12

    .line 101
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 95
    :pswitch_5
    new-instance v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;

    invoke-direct {v0}, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;-><init>()V

    .line 96
    .local v0, "tab1":Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;
    goto :goto_4

    .line 98
    .end local v0    # "tab1":Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;
    :pswitch_b
    new-instance v1, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;

    invoke-direct {v1}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;-><init>()V

    .local v1, "tab2":Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;
    move-object v0, v1

    .line 99
    goto :goto_4

    .line 93
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_c

    .line 119
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 115
    :pswitch_5
    const-string v0, "General"

    goto :goto_4

    .line 117
    :pswitch_8
    const-string v0, "Darts per leg"

    goto :goto_4

    .line 113
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
