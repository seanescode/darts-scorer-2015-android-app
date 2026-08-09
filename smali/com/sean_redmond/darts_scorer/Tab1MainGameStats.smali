###### Class com.sean_redmond.darts_scorer.Tab1MainGameStats (com.sean_redmond.darts_scorer.Tab1MainGameStats)
.class public Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;
.super Landroid/support/v4/app/Fragment;
.source "Tab1MainGameStats.java"


# instance fields
.field bestScoreP1:Landroid/widget/TextView;

.field bestScoreP2:Landroid/widget/TextView;

.field firstNineAvgP1:Landroid/widget/TextView;

.field firstNineAvgP2:Landroid/widget/TextView;

.field highestOutP1:Landroid/widget/TextView;

.field highestOutP2:Landroid/widget/TextView;

.field legsWinnerP1:Landroid/widget/TextView;

.field legsWinnerP2:Landroid/widget/TextView;

.field oneDartAveScoreP1:Landroid/widget/TextView;

.field oneDartAveScoreP2:Landroid/widget/TextView;

.field player1Name:Landroid/widget/TextView;

.field player2Name:Landroid/widget/TextView;

.field sixtyPlusScoresP1:Landroid/widget/TextView;

.field sixtyPlusScoresP2:Landroid/widget/TextView;

.field threeDartAveScoreP1:Landroid/widget/TextView;

.field threeDartAveScoreP2:Landroid/widget/TextView;

.field tonEightyScoresP1:Landroid/widget/TextView;

.field tonEightyScoresP2:Landroid/widget/TextView;

.field tonFortyPlusScoresP1:Landroid/widget/TextView;

.field tonFortyPlusScoresP2:Landroid/widget/TextView;

.field tonPlusScoresP1:Landroid/widget/TextView;

.field tonPlusScoresP2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 46
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v37, 0x7f040024

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, p2

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .line 47
    .local v24, "rootView":Landroid/view/View;
    const v37, 0x7f0d010f

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->sixtyPlusScoresP1:Landroid/widget/TextView;

    .line 48
    const v37, 0x7f0d010d

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->sixtyPlusScoresP2:Landroid/widget/TextView;

    .line 49
    const v37, 0x7f0d010b

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonPlusScoresP1:Landroid/widget/TextView;

    .line 50
    const v37, 0x7f0d010c

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonPlusScoresP2:Landroid/widget/TextView;

    .line 51
    const v37, 0x7f0d0107

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonFortyPlusScoresP1:Landroid/widget/TextView;

    .line 52
    const v37, 0x7f0d0109

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonFortyPlusScoresP2:Landroid/widget/TextView;

    .line 53
    const v37, 0x7f0d0102

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonEightyScoresP1:Landroid/widget/TextView;

    .line 54
    const v37, 0x7f0d0105

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonEightyScoresP2:Landroid/widget/TextView;

    .line 55
    const v37, 0x7f0d00ec

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->legsWinnerP1:Landroid/widget/TextView;

    .line 56
    const v37, 0x7f0d00ee

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->legsWinnerP2:Landroid/widget/TextView;

    .line 57
    const v37, 0x7f0d00f7

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP1:Landroid/widget/TextView;

    .line 58
    const v37, 0x7f0d00fa

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP2:Landroid/widget/TextView;

    .line 59
    const v37, 0x7f0d00ed

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP1:Landroid/widget/TextView;

    .line 60
    const v37, 0x7f0d00ef

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP2:Landroid/widget/TextView;

    .line 61
    const v37, 0x7f0d00e7

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->player1Name:Landroid/widget/TextView;

    .line 62
    const v37, 0x7f0d00ea

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->player2Name:Landroid/widget/TextView;

    .line 63
    const v37, 0x7f0d00fe

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->bestScoreP1:Landroid/widget/TextView;

    .line 64
    const v37, 0x7f0d0100

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->bestScoreP2:Landroid/widget/TextView;

    .line 65
    const v37, 0x7f0d00f3

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->firstNineAvgP1:Landroid/widget/TextView;

    .line 66
    const v37, 0x7f0d00f5

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->firstNineAvgP2:Landroid/widget/TextView;

    .line 67
    const v37, 0x7f0d0114

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->highestOutP1:Landroid/widget/TextView;

    .line 68
    const v37, 0x7f0d0116

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->highestOutP2:Landroid/widget/TextView;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 71
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_4b1

    .line 72
    const-string v37, "sixtyPlusScoresP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 73
    .local v25, "sixtyPlusesP1":I
    const-string v37, "sixtyPlusScoresP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 74
    .local v26, "sixtyPlusesP2":I
    const-string v37, "tonPlusScoresP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 75
    .local v35, "tonPlusesP1":I
    const-string v37, "tonPlusScoresP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 76
    .local v36, "tonPlusesP2":I
    const-string v37, "tonFortyPlusScoresP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 77
    .local v33, "tonFortyPlusesP1":I
    const-string v37, "tonFortyPlusScoresP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 78
    .local v34, "tonFortyPlusesP2":I
    const-string v37, "tonEightyScoresP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 79
    .local v27, "tonEightyPlusesP1":I
    const-string v37, "tonEightyScoresP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    .line 80
    .local v32, "tonEightyPlusesP2":I
    const-string v37, "legsWonP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 81
    .local v14, "legsVictoryP1":I
    const-string v37, "legsWonP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 82
    .local v15, "legsVictoryP2":I
    const-string v37, "p1sName"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 83
    .local v16, "nameP1":Ljava/lang/String;
    const-string v37, "p2sName"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "nameP2":Ljava/lang/String;
    const-string v37, "bestScoreP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 85
    .local v12, "highestScoreP1":I
    const-string v37, "bestScoreP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 86
    .local v13, "highestScoreP2":I
    const-string v37, "firstNineAveP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 87
    .local v8, "firstNineAveP1":F
    const-string v37, "firstNineAveP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 88
    .local v9, "firstNineAveP2":F
    const-string v37, "highestCheckoutP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 89
    .local v10, "highestCheckoutP1":I
    const-string v37, "highestCheckoutP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 94
    .local v11, "highestCheckoutP2":I
    const-string v37, "dartsThrownP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, "dartsThrownP1":I
    const-string v37, "dartsThrownP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 96
    .local v5, "dartsThrownP2":I
    const-string v37, "pointsScoredP1"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 97
    .local v22, "pointsScoredP1":I
    const-string v37, "pointsScoredP2"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 99
    .local v23, "pointsScoredP2":I
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v37, "0.0"

    move-object/from16 v0, v37

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, "df":Ljava/text/DecimalFormat;
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v38, v0

    int-to-double v0, v4

    move-wide/from16 v40, v0

    div-double v18, v38, v40

    .line 101
    .local v18, "oneDartAvgP1":D
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v38, v0

    int-to-double v0, v5

    move-wide/from16 v40, v0

    div-double v20, v38, v40

    .line 102
    .local v20, "oneDartAvgP2":D
    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    mul-double v28, v18, v38

    .line 103
    .local v28, "threeDartAvgP1":D
    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    mul-double v30, v20, v38

    .line 105
    .local v30, "threeDartAvgP2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->sixtyPlusScoresP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->sixtyPlusScoresP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonPlusScoresP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonPlusScoresP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonFortyPlusScoresP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonFortyPlusScoresP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonEightyScoresP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->tonEightyScoresP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->legsWinnerP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->legsWinnerP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->player1Name:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->player2Name:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->bestScoreP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->bestScoreP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->firstNineAvgP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    float-to-double v0, v8

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->firstNineAvgP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    float-to-double v0, v9

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->highestOutP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->highestOutP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-nez v4, :cond_4b2

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const-string v38, "0"

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const-string v38, "0"

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_499
    if-nez v5, :cond_4f7

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const-string v38, "0"

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const-string v38, "0"

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v4    # "dartsThrownP1":I
    .end local v5    # "dartsThrownP2":I
    .end local v6    # "df":Ljava/text/DecimalFormat;
    .end local v8    # "firstNineAveP1":F
    .end local v9    # "firstNineAveP2":F
    .end local v10    # "highestCheckoutP1":I
    .end local v11    # "highestCheckoutP2":I
    .end local v12    # "highestScoreP1":I
    .end local v13    # "highestScoreP2":I
    .end local v14    # "legsVictoryP1":I
    .end local v15    # "legsVictoryP2":I
    .end local v16    # "nameP1":Ljava/lang/String;
    .end local v17    # "nameP2":Ljava/lang/String;
    .end local v18    # "oneDartAvgP1":D
    .end local v20    # "oneDartAvgP2":D
    .end local v22    # "pointsScoredP1":I
    .end local v23    # "pointsScoredP2":I
    .end local v25    # "sixtyPlusesP1":I
    .end local v26    # "sixtyPlusesP2":I
    .end local v27    # "tonEightyPlusesP1":I
    .end local v28    # "threeDartAvgP1":D
    .end local v30    # "threeDartAvgP2":D
    .end local v32    # "tonEightyPlusesP2":I
    .end local v33    # "tonFortyPlusesP1":I
    .end local v34    # "tonFortyPlusesP2":I
    .end local v35    # "tonPlusesP1":I
    .end local v36    # "tonPlusesP2":I
    :cond_4b1
    :goto_4b1
    return-object v24

    .line 128
    .restart local v4    # "dartsThrownP1":I
    .restart local v5    # "dartsThrownP2":I
    .restart local v6    # "df":Ljava/text/DecimalFormat;
    .restart local v8    # "firstNineAveP1":F
    .restart local v9    # "firstNineAveP2":F
    .restart local v10    # "highestCheckoutP1":I
    .restart local v11    # "highestCheckoutP2":I
    .restart local v12    # "highestScoreP1":I
    .restart local v13    # "highestScoreP2":I
    .restart local v14    # "legsVictoryP1":I
    .restart local v15    # "legsVictoryP2":I
    .restart local v16    # "nameP1":Ljava/lang/String;
    .restart local v17    # "nameP2":Ljava/lang/String;
    .restart local v18    # "oneDartAvgP1":D
    .restart local v20    # "oneDartAvgP2":D
    .restart local v22    # "pointsScoredP1":I
    .restart local v23    # "pointsScoredP2":I
    .restart local v25    # "sixtyPlusesP1":I
    .restart local v26    # "sixtyPlusesP2":I
    .restart local v27    # "tonEightyPlusesP1":I
    .restart local v28    # "threeDartAvgP1":D
    .restart local v30    # "threeDartAvgP2":D
    .restart local v32    # "tonEightyPlusesP2":I
    .restart local v33    # "tonFortyPlusesP1":I
    .restart local v34    # "tonFortyPlusesP2":I
    .restart local v35    # "tonPlusesP1":I
    .restart local v36    # "tonPlusesP2":I
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP1:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_499

    .line 136
    :cond_4f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->oneDartAveScoreP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/Tab1MainGameStats;->threeDartAveScoreP2:Landroid/widget/TextView;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b1
.end method
