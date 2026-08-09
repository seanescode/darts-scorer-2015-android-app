###### Class com.sean_redmond.darts_scorer.ManagePlayersSubScreen (com.sean_redmond.darts_scorer.ManagePlayersSubScreen)
.class public Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ManagePlayersSubScreen.java"


# instance fields
.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field playerId:I

.field playerName:Ljava/lang/String;

.field playerNameEditText:Landroid/widget/EditText;

.field playerStats:Landroid/widget/Button;

.field res:Landroid/database/Cursor;

.field updatePlayerNameBtn:Landroid/widget/Button;

.field updatedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public deletePlayer()V
    .registers 4

    .prologue
    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Delete Player?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    const-string v1, "Are you sure? This can\'t be undone."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    const-string v1, "Yeah"

    new-instance v2, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;-><init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v1, "Nope"

    new-instance v2, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$3;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$3;-><init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method

.method public onClickPlayerStats()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerStats:Landroid/widget/Button;

    new-instance v1, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;-><init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public onClickUpdateName(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatedName:Ljava/lang/String;

    .line 70
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    iget v5, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatedName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->updatePlayer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 72
    .local v0, "isUpdated":Z
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatedName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name still "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatedName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 74
    .local v1, "noChangeToNameMessage":Landroid/widget/Toast;
    invoke-virtual {v1, v9, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 75
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 85
    .end local v1    # "noChangeToNameMessage":Landroid/widget/Toast;
    :goto_4d
    return-void

    .line 76
    :cond_4e
    if-eqz v0, :cond_76

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatedName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 78
    .local v3, "updatedNameMessage":Landroid/widget/Toast;
    invoke-virtual {v3, v9, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 79
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4d

    .line 81
    .end local v3    # "updatedNameMessage":Landroid/widget/Toast;
    :cond_76
    const-string v4, "Name not updated!"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 82
    .local v2, "notUpdatedNameMessage":Landroid/widget/Toast;
    invoke-virtual {v2, v9, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 83
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1b

    .line 43
    const-string v1, "playerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerId:I

    .line 46
    :cond_1b
    const v1, 0x7f0d006c

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerNameEditText:Landroid/widget/EditText;

    .line 47
    const v1, 0x7f0d006e

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->updatePlayerNameBtn:Landroid/widget/Button;

    .line 48
    const v1, 0x7f0d006f

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerStats:Landroid/widget/Button;

    .line 50
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->onClickPlayerStats()V

    .line 52
    new-instance v1, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 53
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->res:Landroid/database/Cursor;

    .line 55
    :cond_4e
    :goto_4e
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->res:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 56
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->res:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerId:I

    if-ne v1, v2, :cond_4e

    .line 58
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->res:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerName:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 63
    :cond_72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 105
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 117
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 114
    :pswitch_c
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->deletePlayer()V

    .line 115
    const/4 v0, 0x1

    goto :goto_b

    .line 112
    nop

    :pswitch_data_12
    .packed-switch 0x7f0d011c
        :pswitch_c
    .end packed-switch
.end method

###### Class com.sean_redmond.darts_scorer.ManagePlayersSubScreen.AnonymousClass1 (com.sean_redmond.darts_scorer.ManagePlayersSubScreen$1)
.class Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;
.super Ljava/lang/Object;
.source "ManagePlayersSubScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->onClickPlayerStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-virtual {v1}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sean_redmond/darts_scorer/PlayerStats;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "playerId"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    iget v2, v2, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v1, "playerName"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    iget-object v2, v2, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-virtual {v1, v0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.ManagePlayersSubScreen.AnonymousClass2 (com.sean_redmond.darts_scorer.ManagePlayersSubScreen$2)
.class Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;
.super Ljava/lang/Object;
.source "ManagePlayersSubScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->deletePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    iget v1, v1, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->playerId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->deletePlayer(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_28

    .line 132
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    const-string v1, "Player Deleted"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->finish()V

    .line 137
    :goto_27
    return-void

    .line 135
    :cond_28
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$2;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    const-string v1, "Player NOT Deleted"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method

###### Class com.sean_redmond.darts_scorer.ManagePlayersSubScreen.AnonymousClass3 (com.sean_redmond.darts_scorer.ManagePlayersSubScreen$3)
.class Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$3;
.super Ljava/lang/Object;
.source "ManagePlayersSubScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;->deletePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen$3;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    return-void
.end method
