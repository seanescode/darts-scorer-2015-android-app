###### Class com.sean_redmond.darts_scorer.game_setup (com.sean_redmond.darts_scorer.game_setup)
.class public Lcom/sean_redmond/darts_scorer/game_setup;
.super Landroid/support/v7/app/ActionBarActivity;
.source "game_setup.java"


# static fields
.field public static final NAME_PREF:Ljava/lang/String; = "namePreference"


# instance fields
.field cpuAverageScore:I

.field cpuCheckoutPercentIncrementor:D

.field isPlayCpuMode:Z

.field legsToPlay:I

.field numLegsBtn:Landroid/widget/Button;

.field p1Id:I

.field p1Name:Ljava/lang/String;

.field p2Id:I

.field p2Name:Ljava/lang/String;

.field playTimerMode:Z

.field scoreStartFrom:I

.field startingScoreBtn:Landroid/widget/Button;

.field timePerShotBtn:Landroid/widget/Button;

.field timePerShotTableRow:Landroid/widget/TableRow;

.field timePerShotTv:Landroid/widget/TextView;

.field timeUpPenalty:I

.field timeoutPenaltyBtn:Landroid/widget/Button;

.field timeoutPenaltyTableRow:Landroid/widget/TableRow;

.field timeoutPenaltyTv:Landroid/widget/TextView;

.field timerModeTableRow:Landroid/widget/TableRow;

.field timerStartFrom:I

.field useTimer:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public goToPlayGame(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "legsToPlay"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "scoreStartFrom"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v1, "p1Name"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "p2Name"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "p1Id"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p1Id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v1, "p2Id"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p2Id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "isPlayCpuMode"

    iget-boolean v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->isPlayCpuMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string v1, "cpuAverageScore"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->cpuAverageScore:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v1, "cpuCheckoutPercentIncrementor"

    iget-wide v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->cpuCheckoutPercentIncrementor:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 275
    const-string v1, "timerModeSelection"

    iget-boolean v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string v1, "timerStartFrom"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v1, "timeUpPenalty"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/game_setup;->finish()V

    .line 280
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/game_setup;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public onClickNumLegs(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 184
    const/16 v2, 0x14

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "4"

    aput-object v3, v1, v2

    const-string v2, "5"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "10"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "11"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "12"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "13"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "14"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "15"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "16"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "17"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "18"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "19"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "20"

    aput-object v3, v1, v2

    .line 186
    .local v1, "numLegs":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Number of Legs"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sean_redmond/darts_scorer/game_setup$2;

    invoke-direct {v3, p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup$2;-><init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 200
    return-void
.end method

.method public onClickStartingScore(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 205
    const/16 v2, 0x9

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "301"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "401"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "501"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "601"

    aput-object v3, v1, v2

    const-string v2, "701"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "801"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "901"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "1001"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "1501"

    aput-object v3, v1, v2

    .line 207
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 209
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Starting Score"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sean_redmond/darts_scorer/game_setup$3;

    invoke-direct {v3, p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup$3;-><init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return-void
.end method

.method public onClickTimePerShot(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 225
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "10"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "15"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "20"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "25"

    aput-object v3, v1, v2

    const-string v2, "30"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "35"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "40"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "45"

    aput-object v3, v1, v2

    .line 227
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Time Per Shot (Seconds)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sean_redmond/darts_scorer/game_setup$4;

    invoke-direct {v3, p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup$4;-><init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 241
    return-void
.end method

.method public onClickTimeoutPenalty(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 245
    const/16 v2, 0xa

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "10"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "15"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "20"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "25"

    aput-object v3, v1, v2

    const-string v2, "30"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "40"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "50"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "60"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "80"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "100"

    aput-object v3, v1, v2

    .line 247
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 249
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Penalty for Timeout (Points)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sean_redmond/darts_scorer/game_setup$5;

    invoke-direct {v3, p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup$5;-><init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/game_setup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_142

    .line 51
    const-string v1, "p1Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p1Name:Ljava/lang/String;

    .line 52
    const-string v1, "p2Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p2Name:Ljava/lang/String;

    .line 53
    const-string v1, "p1Id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p1Id:I

    .line 54
    const-string v1, "p2Id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->p2Id:I

    .line 55
    const-string v1, "cpuAverageScore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->cpuAverageScore:I

    .line 56
    const-string v1, "isPlayCpuMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->isPlayCpuMode:Z

    .line 57
    const-string v1, "cpuCheckoutPercentIncrementor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->cpuCheckoutPercentIncrementor:D

    .line 59
    const v1, 0x7f0d004d

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTableRow:Landroid/widget/TableRow;

    .line 60
    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTableRow:Landroid/widget/TableRow;

    .line 61
    const v1, 0x7f0d004a

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerModeTableRow:Landroid/widget/TableRow;

    .line 62
    const v1, 0x7f0d004e

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d0051

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0d0046

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->numLegsBtn:Landroid/widget/Button;

    .line 66
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->startingScoreBtn:Landroid/widget/Button;

    .line 67
    const v1, 0x7f0d004f

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    .line 68
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0d004c

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/game_setup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->useTimer:Landroid/widget/ToggleButton;

    .line 72
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->numLegsBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->startingScoreBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->useTimer:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/sean_redmond/darts_scorer/game_setup$1;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/game_setup$1;-><init>(Lcom/sean_redmond/darts_scorer/game_setup;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-boolean v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->isPlayCpuMode:Z

    if-eqz v1, :cond_143

    .line 117
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerModeTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 131
    :cond_142
    :goto_142
    return-void

    .line 121
    :cond_143
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 122
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 123
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 124
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 125
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 126
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 127
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 128
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_142
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 137
    const-string v1, "namePreference"

    invoke-virtual {p0, v1, v3}, Lcom/sean_redmond/darts_scorer/game_setup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "numLegs"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    .line 139
    const-string v1, "startScore"

    const/16 v2, 0x1f5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    .line 140
    const-string v1, "timeStartFrom"

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    .line 141
    const-string v1, "timeUpPeno"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    .line 142
    const-string v1, "timerMode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    .line 144
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->numLegsBtn:Landroid/widget/Button;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->startingScoreBtn:Landroid/widget/Button;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-boolean v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    if-eqz v1, :cond_a2

    .line 151
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->useTimer:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 153
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 154
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 155
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 156
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 158
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 159
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 160
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 177
    :goto_9b
    iget-boolean v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->isPlayCpuMode:Z

    if-eqz v1, :cond_a1

    .line 178
    iput-boolean v3, p0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    .line 180
    :cond_a1
    return-void

    .line 164
    :cond_a2
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->useTimer:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 167
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 168
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 169
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 171
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 173
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 174
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_9b
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 285
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 287
    const-string v1, "namePreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sean_redmond/darts_scorer/game_setup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "numLegs"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v1, "startScore"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v1, "timeStartFrom"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v1, "timeUpPeno"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v1, "timerMode"

    iget-boolean v2, p0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.game_setup.AnonymousClass1 (com.sean_redmond.darts_scorer.game_setup$1)
.class Lcom/sean_redmond/darts_scorer/game_setup$1;
.super Ljava/lang/Object;
.source "game_setup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/game_setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/game_setup;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/game_setup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/game_setup;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-eqz p2, :cond_45

    .line 84
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-boolean v2, v0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    .line 86
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 88
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 91
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 93
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 94
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    :goto_44
    return-void

    .line 97
    :cond_45
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-boolean v1, v0, Lcom/sean_redmond/darts_scorer/game_setup;->playTimerMode:Z

    .line 99
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 101
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 102
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 105
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 106
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 107
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$1;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_44
.end method

###### Class com.sean_redmond.darts_scorer.game_setup.AnonymousClass2 (com.sean_redmond.darts_scorer.game_setup$2)
.class Lcom/sean_redmond/darts_scorer/game_setup$2;
.super Ljava/lang/Object;
.source "game_setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/game_setup;->onClickNumLegs(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/game_setup;

.field final synthetic val$numLegs:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/game_setup;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->val$numLegs:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->val$numLegs:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    .line 194
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->numLegsBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup$2;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget v2, v2, Lcom/sean_redmond/darts_scorer/game_setup;->legsToPlay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.game_setup.AnonymousClass3 (com.sean_redmond.darts_scorer.game_setup$3)
.class Lcom/sean_redmond/darts_scorer/game_setup$3;
.super Ljava/lang/Object;
.source "game_setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/game_setup;->onClickStartingScore(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/game_setup;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/game_setup;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    .line 215
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->startingScoreBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup$3;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget v2, v2, Lcom/sean_redmond/darts_scorer/game_setup;->scoreStartFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.game_setup.AnonymousClass4 (com.sean_redmond.darts_scorer.game_setup$4)
.class Lcom/sean_redmond/darts_scorer/game_setup$4;
.super Ljava/lang/Object;
.source "game_setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/game_setup;->onClickTimePerShot(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/game_setup;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/game_setup;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    .line 235
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timePerShotBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup$4;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget v2, v2, Lcom/sean_redmond/darts_scorer/game_setup;->timerStartFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.game_setup.AnonymousClass5 (com.sean_redmond.darts_scorer.game_setup$5)
.class Lcom/sean_redmond/darts_scorer/game_setup$5;
.super Ljava/lang/Object;
.source "game_setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/game_setup;->onClickTimeoutPenalty(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/game_setup;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/game_setup;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/game_setup;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    .line 255
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/game_setup;->timeoutPenaltyBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/game_setup$5;->this$0:Lcom/sean_redmond/darts_scorer/game_setup;

    iget v2, v2, Lcom/sean_redmond/darts_scorer/game_setup;->timeUpPenalty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method
