###### Class com.sean_redmond.darts_scorer.MainActivity (com.sean_redmond.darts_scorer.MainActivity)
.class public Lcom/sean_redmond/darts_scorer/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickGoToManagePlayers(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/ManagePlayers;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public onClickGoToSelectPlayer(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/SelectPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public onClickResumeGame(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "pressedResumeMatch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/MainActivity;->setContentView(I)V

    .line 34
    return-void
.end method
