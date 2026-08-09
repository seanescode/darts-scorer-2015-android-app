###### Class com.sean_redmond.darts_scorer.SelectPlayer (com.sean_redmond.darts_scorer.SelectPlayer)
.class public Lcom/sean_redmond/darts_scorer/SelectPlayer;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SelectPlayer.java"


# static fields
.field public static final NAME_PREF:Ljava/lang/String; = "namePreference"


# instance fields
.field choosePlayer1:Landroid/widget/Button;

.field choosePlayer2:Landroid/widget/Button;

.field cpuAverageScore:I

.field cpuCheckoutPercentIncrementor:D

.field cpuLevel:Ljava/lang/String;

.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field gameMode:[Ljava/lang/CharSequence;

.field gameModeButton:Landroid/widget/Button;

.field gameModeSelected:Ljava/lang/String;

.field player1Id:I

.field player1Name:Ljava/lang/String;

.field player2Id:I

.field player2Label:Landroid/widget/TextView;

.field player2Name:Ljava/lang/String;

.field private playerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playerNo:I

.field res:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Play Friend"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Play CPU"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameMode:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/sean_redmond/darts_scorer/SelectPlayer;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/sean_redmond/darts_scorer/SelectPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerIds:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cpuCheckoutPercentCalc(D)D
    .registers 14
    .param p1, "incrementor"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 156
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v6, p1

    add-double v0, v4, v6

    .line 161
    .local v0, "checkoutPercent":D
    sub-double v2, v8, v0

    .line 163
    .local v2, "probabilityOfNoCheckout":D
    mul-double v4, v2, v2

    mul-double/2addr v4, v2

    sub-double v4, v8, v4

    return-wide v4
.end method

.method public cpuOpponentDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 131
    const/16 v2, 0x14

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Level 1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Level 2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Level 3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Level 4"

    aput-object v3, v1, v2

    const-string v2, "Level 5"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "Level 6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Level 7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Level 8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Level 9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Level 10"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Level 11"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Level 12"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Level 13"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Level 14"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Level 15"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Level 16"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Level 17"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Level 18"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Level 19"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Level 20"

    aput-object v3, v1, v2

    .line 133
    .local v1, "cpuLevels":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v2, "Pick computer level!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v2, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;

    invoke-direct {v2, p0, v1}, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;-><init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 147
    return-void
.end method

.method public isCpuMode()Z
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameMode:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClickChoosePlayer1(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    .line 193
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_16

    .line 194
    const-string v0, "Error No Players added"

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->showMessage(Ljava/lang/String;)V

    .line 202
    :goto_15
    return-void

    .line 199
    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNo:I

    .line 201
    const-string v0, "Play as"

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->showMessage(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onClickChoosePlayer2(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNo:I

    .line 208
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->isCpuMode()Z

    move-result v0

    if-nez v0, :cond_25

    .line 210
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    .line 211
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1f

    .line 212
    const-string v0, "Error No Players added"

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->showMessage(Ljava/lang/String;)V

    .line 218
    :goto_1e
    return-void

    .line 215
    :cond_1f
    const-string v0, "Play as"

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->showMessage(Ljava/lang/String;)V

    goto :goto_1e

    .line 217
    :cond_25
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuOpponentDialog()V

    goto :goto_1e
.end method

.method public onClickGameModeButton(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    .line 106
    .local v1, "gameModePriorToClick":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Game Mode"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameMode:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;

    invoke-direct {v3, p0, v1}, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;-><init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    return-void
.end method

.method public onClickPlayGame(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer1:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 223
    :cond_24
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Please make sure players are inputted first!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 225
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, 0x4b

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 226
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 257
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_3a
    return-void

    .line 245
    :cond_3b
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer1:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Name:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Name:Ljava/lang/String;

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sean_redmond/darts_scorer/game_setup;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "p1Id"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v2, "p2Id"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v2, "p1Name"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "p2Name"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "cpuAverageScore"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuAverageScore:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v2, "isPlayCpuMode"

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->isCpuMode()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v2, "cpuCheckoutPercentIncrementor"

    iget-wide v4, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuCheckoutPercentIncrementor:D

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->setContentView(I)V

    .line 46
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeButton:Landroid/widget/Button;

    .line 47
    new-instance v0, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNames:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerIds:Ljava/util/List;

    .line 50
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer1:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Label:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 281
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 294
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 290
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/newPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->startActivity(Landroid/content/Intent;)V

    .line 292
    const/4 v1, 0x1

    goto :goto_b

    .line 288
    :pswitch_data_18
    .packed-switch 0x7f0d0120
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 60
    const-string v2, "namePreference"

    invoke-virtual {p0, v2, v4}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "plyr1Id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Id:I

    .line 62
    const-string v2, "plyr2Id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Id:I

    .line 63
    const-string v2, "gameModeChosen"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameMode:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    .line 64
    const-string v2, "cpuAvg"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuAverageScore:I

    .line 65
    const-string v2, "compLevel"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuLevel:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->setP2Label()V

    .line 70
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v2}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    .line 72
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6b

    .line 73
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Add player using button in top right corner!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 75
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 82
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerIds:Ljava/util/List;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNames:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Id:I

    if-ne v2, v3, :cond_a2

    .line 87
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_a2
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->isCpuMode()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 90
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuLevel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b

    .line 92
    :cond_b0
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Id:I

    if-ne v2, v3, :cond_6b

    .line 93
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->res:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b

    .line 96
    :cond_c6
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 261
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 263
    const-string v1, "namePreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "plyr1Id"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Id:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v1, "plyr2Id"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Id:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v1, "cpuAvg"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuAverageScore:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v1, "gameModeChosen"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    const-string v1, "compLevel"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuLevel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 275
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->finish()V

    .line 276
    return-void
.end method

.method public setP2Label()V
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->isCpuMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 124
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Label:Landroid/widget/TextView;

    const-string v1, "CPU"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_d
    return-void

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Label:Landroid/widget/TextView;

    const-string v1, "Player 2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNames:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 171
    .local v1, "cs":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 172
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    new-instance v2, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;

    invoke-direct {v2, p0, v1}, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;-><init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.SelectPlayer.AnonymousClass1 (com.sean_redmond.darts_scorer.SelectPlayer$1)
.class Lcom/sean_redmond/darts_scorer/SelectPlayer$1;
.super Ljava/lang/Object;
.source "SelectPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/SelectPlayer;->onClickGameModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

.field final synthetic val$gameModePriorToClick:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/SelectPlayer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->val$gameModePriorToClick:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameMode:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->setP2Label()V

    .line 115
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->val$gameModePriorToClick:Ljava/lang/String;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;->gameModeSelected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 116
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_33
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.SelectPlayer.AnonymousClass2 (com.sean_redmond.darts_scorer.SelectPlayer$2)
.class Lcom/sean_redmond/darts_scorer/SelectPlayer$2;
.super Ljava/lang/Object;
.source "SelectPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuOpponentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

.field final synthetic val$cpuLevels:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/SelectPlayer;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->val$cpuLevels:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->val$cpuLevels:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuLevel:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->val$cpuLevels:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    mul-int/lit8 v1, p2, 0x5

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuAverageScore:I

    .line 142
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$2;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    add-int/lit8 v1, p2, 0x1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->cpuCheckoutPercentIncrementor:D

    .line 144
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.SelectPlayer.AnonymousClass3 (com.sean_redmond.darts_scorer.SelectPlayer$3)
.class Lcom/sean_redmond/darts_scorer/SelectPlayer$3;
.super Ljava/lang/Object;
.source "SelectPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/SelectPlayer;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

.field final synthetic val$cs:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/SelectPlayer;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/SelectPlayer;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iput-object p2, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->val$cs:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->playerNo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 178
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    invoke-static {v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->access$000(Lcom/sean_redmond/darts_scorer/SelectPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player1Id:I

    .line 179
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->val$cs:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_2a
    return-void

    .line 181
    :cond_2b
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    invoke-static {v0}, Lcom/sean_redmond/darts_scorer/SelectPlayer;->access$000(Lcom/sean_redmond/darts_scorer/SelectPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;->player2Id:I

    .line 182
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->this$0:Lcom/sean_redmond/darts_scorer/SelectPlayer;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/SelectPlayer;->choosePlayer2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/SelectPlayer$3;->val$cs:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method
