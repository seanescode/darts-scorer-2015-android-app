###### Class com.sean_redmond.darts_scorer.newPlayer (com.sean_redmond.darts_scorer.newPlayer)
.class public Lcom/sean_redmond/darts_scorer/newPlayer;
.super Landroid/support/v7/app/ActionBarActivity;
.source "newPlayer.java"


# instance fields
.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field enterNameButton:Landroid/widget/Button;

.field newPlayerName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public inputName()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/newPlayer;->enterNameButton:Landroid/widget/Button;

    new-instance v1, Lcom/sean_redmond/darts_scorer/newPlayer$1;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/newPlayer$1;-><init>(Lcom/sean_redmond/darts_scorer/newPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/newPlayer;->finish()V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/newPlayer;->setContentView(I)V

    .line 22
    new-instance v0, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/newPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 23
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/newPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/newPlayer;->newPlayerName:Landroid/widget/EditText;

    .line 24
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/newPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/newPlayer;->enterNameButton:Landroid/widget/Button;

    .line 26
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/newPlayer;->inputName()V

    .line 27
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.newPlayer.AnonymousClass1 (com.sean_redmond.darts_scorer.newPlayer$1)
.class Lcom/sean_redmond/darts_scorer/newPlayer$1;
.super Ljava/lang/Object;
.source "newPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/newPlayer;->inputName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/newPlayer;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/newPlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/newPlayer;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 35
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/newPlayer;->newPlayerName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 36
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    const-string v2, "No name added. Please try again."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 47
    :goto_20
    return-void

    .line 40
    :cond_21
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/newPlayer;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    iget-object v2, v2, Lcom/sean_redmond/darts_scorer/newPlayer;->newPlayerName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->insertPlayer(Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, "isInserted":Z
    if-eqz v0, :cond_4c

    .line 43
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    const-string v2, "Player Inserted"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 44
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    iget-object v1, v1, Lcom/sean_redmond/darts_scorer/newPlayer;->newPlayerName:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 46
    :cond_4c
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/newPlayer$1;->this$0:Lcom/sean_redmond/darts_scorer/newPlayer;

    const-string v2, "Player NOT Inserted"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method
