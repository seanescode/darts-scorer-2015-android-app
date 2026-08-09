###### Class com.sean_redmond.darts_scorer.ManagePlayers (com.sean_redmond.darts_scorer.ManagePlayers)
.class public Lcom/sean_redmond/darts_scorer/ManagePlayers;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ManagePlayers.java"


# instance fields
.field dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

.field myArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playerIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field playerNameArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playersId:I

.field playersListView:Landroid/widget/ListView;

.field res:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public navigateToPlayerInfoScreen(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/ManagePlayersSubScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "playerId"

    iget v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playersId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->finish()V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->setContentView(I)V

    .line 34
    const v1, 0x7f0d0068

    invoke-virtual {p0, v1}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playersListView:Landroid/widget/ListView;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerNameArrayList:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerIdArrayList:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerNameArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->myArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 38
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playersListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->myArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    new-instance v1, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    .line 42
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->dbh:Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->readPlayers()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->res:Landroid/database/Cursor;

    .line 44
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->res:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_63

    .line 45
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No players have been added yet!"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_62
    return-void

    .line 52
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->res:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 54
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerNameArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->res:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerIdArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->res:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 59
    :cond_86
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playersListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;-><init>(Lcom/sean_redmond/darts_scorer/ManagePlayers;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_62
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 84
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 93
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sean_redmond/darts_scorer/newPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->finish()V

    .line 96
    const/4 v1, 0x1

    goto :goto_b

    .line 91
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0d0120
        :pswitch_c
    .end packed-switch
.end method

###### Class com.sean_redmond.darts_scorer.ManagePlayers.AnonymousClass1 (com.sean_redmond.darts_scorer.ManagePlayers$1)
.class Lcom/sean_redmond/darts_scorer/ManagePlayers$1;
.super Ljava/lang/Object;
.source "ManagePlayers.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/ManagePlayers;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/ManagePlayers;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/ManagePlayers;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/ManagePlayers;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayers;

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayers;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playerIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sean_redmond/darts_scorer/ManagePlayers;->playersId:I

    .line 65
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/ManagePlayers$1;->this$0:Lcom/sean_redmond/darts_scorer/ManagePlayers;

    invoke-virtual {v0, p2}, Lcom/sean_redmond/darts_scorer/ManagePlayers;->navigateToPlayerInfoScreen(Landroid/view/View;)V

    .line 67
    return-void
.end method
