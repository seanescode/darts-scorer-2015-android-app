###### Class com.sean_redmond.darts_scorer.PlayerStats (com.sean_redmond.darts_scorer.PlayerStats)
.class public Lcom/sean_redmond/darts_scorer/PlayerStats;
.super Landroid/support/v7/app/ActionBarActivity;
.source "PlayerStats.java"


# instance fields
.field dartsThrown:I

.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field legsPlayed:I

.field legsWon:I

.field nameOfPlayer:Ljava/lang/String;

.field oneDaAve:D

.field playerId:I

.field playerName:Landroid/widget/TextView;

.field pointsScored:I

.field res:Landroid/database/Cursor;

.field sixties:I

.field threeDaAve:D

.field tonEighties:I

.field tonForties:I

.field tons:I

.field totalLegsPlayed:Landroid/widget/TextView;

.field totalLegsWon:Landroid/widget/TextView;

.field totalOneDartAvg:Landroid/widget/TextView;

.field totalSixties:Landroid/widget/TextView;

.field totalThreeDartAvg:Landroid/widget/TextView;

.field totalTonEighties:Landroid/widget/TextView;

.field totalTonForties:Landroid/widget/TextView;

.field totalTons:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 19
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsPlayed:I

    .line 20
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsWon:I

    .line 21
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->sixties:I

    .line 22
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tons:I

    .line 23
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonForties:I

    .line 24
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonEighties:I

    .line 25
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->pointsScored:I

    .line 26
    iput v0, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dartsThrown:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->setContentView(I)V

    .line 36
    const v2, 0x7f0d00ba

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalLegsPlayed:Landroid/widget/TextView;

    .line 37
    const v2, 0x7f0d00bf

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalLegsWon:Landroid/widget/TextView;

    .line 38
    const v2, 0x7f0d00c4

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalSixties:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f0d00c8

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTons:Landroid/widget/TextView;

    .line 40
    const v2, 0x7f0d00cb

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTonForties:Landroid/widget/TextView;

    .line 41
    const v2, 0x7f0d00ce

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTonEighties:Landroid/widget/TextView;

    .line 42
    const v2, 0x7f0d00d2

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalOneDartAvg:Landroid/widget/TextView;

    .line 43
    const v2, 0x7f0d00d5

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalThreeDartAvg:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f0d00b9

    invoke-virtual {p0, v2}, Lcom/sean_redmond/darts_scorer/PlayerStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->playerName:Landroid/widget/TextView;

    .line 46
    new-instance v2, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 48
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/PlayerStats;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_8d

    .line 50
    const-string v2, "playerId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->playerId:I

    .line 51
    const-string v2, "playerName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->nameOfPlayer:Ljava/lang/String;

    .line 54
    :cond_8d
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v2}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readStatsData()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    .line 56
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_184

    .line 79
    :cond_9d
    :goto_9d
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalLegsPlayed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsPlayed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalLegsWon:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsWon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalSixties:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->sixties:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTons:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tons:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTonForties:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonForties:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalTonEighties:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonEighties:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalOneDartAvg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->oneDaAve:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->totalThreeDartAvg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->threeDaAve:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->playerName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->nameOfPlayer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 59
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_184
    :goto_184
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 60
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->playerId:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_184

    .line 62
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsPlayed:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsPlayed:I

    .line 63
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsWon:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->legsWon:I

    .line 64
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->sixties:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->sixties:I

    .line 65
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tons:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tons:I

    .line 66
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonForties:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonForties:I

    .line 67
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonEighties:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->tonEighties:I

    .line 68
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->pointsScored:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->pointsScored:I

    .line 69
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dartsThrown:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->res:Landroid/database/Cursor;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dartsThrown:I

    goto :goto_184

    .line 73
    :cond_1fa
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dartsThrown:I

    if-eqz v2, :cond_9d

    .line 74
    iget v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->pointsScored:I

    int-to-double v2, v2

    iget v4, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->dartsThrown:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->oneDaAve:D

    .line 75
    iget-wide v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->oneDaAve:D

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sean_redmond/darts_scorer/PlayerStats;->threeDaAve:D

    goto/16 :goto_9d
.end method
