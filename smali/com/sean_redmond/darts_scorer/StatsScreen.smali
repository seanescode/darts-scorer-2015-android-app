###### Class com.sean_redmond.darts_scorer.StatsScreen (com.sean_redmond.darts_scorer.StatsScreen)
.class public Lcom/sean_redmond/darts_scorer/StatsScreen;
.super Landroid/support/v7/app/ActionBarActivity;
.source "StatsScreen.java"


# instance fields
.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field playerName:Ljava/lang/String;

.field playersCursor:Landroid/database/Cursor;

.field statsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v12, 0x7f040021

    invoke-virtual {p0, v12}, Lcom/sean_redmond/darts_scorer/StatsScreen;->setContentView(I)V

    .line 20
    new-instance v12, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v12, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 21
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v12}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readStatsData()Landroid/database/Cursor;

    move-result-object v12

    iput-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    .line 22
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v12}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v12

    iput-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playersCursor:Landroid/database/Cursor;

    .line 24
    :goto_20
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_11a

    .line 26
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 27
    .local v0, "legsPlayed":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 28
    .local v1, "legsWon":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 29
    .local v8, "sixties":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 30
    .local v6, "oneHundreds":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 31
    .local v5, "oneForties":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 32
    .local v4, "oneEighties":I
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 33
    .local v2, "oneDartAve":D
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 34
    .local v10, "threeDartAve":D
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->statsCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 36
    .local v7, "playerIdFk":I
    :cond_69
    :goto_69
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playersCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_84

    .line 38
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playersCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v7, v12, :cond_69

    .line 39
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playersCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playerName:Ljava/lang/String;

    goto :goto_69

    .line 42
    :cond_84
    iget-object v12, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playersCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/StatsScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "playerIdFk=> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "playerName=> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sean_redmond/darts_scorer/StatsScreen;->playerName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "legs Played: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "legs Won:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "sixties: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "oneHundreds: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "one da average: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 54
    .local v9, "toast":Landroid/widget/Toast;
    const/16 v12, 0x11

    const/4 v13, 0x0

    const/16 v14, 0x4b

    invoke-virtual {v9, v12, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 55
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    .line 58
    .end local v0    # "legsPlayed":I
    .end local v1    # "legsWon":I
    .end local v2    # "oneDartAve":D
    .end local v4    # "oneEighties":I
    .end local v5    # "oneForties":I
    .end local v6    # "oneHundreds":I
    .end local v7    # "playerIdFk":I
    .end local v8    # "sixties":I
    .end local v9    # "toast":Landroid/widget/Toast;
    .end local v10    # "threeDartAve":D
    :cond_11a
    return-void
.end method
