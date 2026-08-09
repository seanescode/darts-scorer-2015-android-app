###### Class com.sean_redmond.darts_scorer.Tab2DartsPerLeg (com.sean_redmond.darts_scorer.Tab2DartsPerLeg)
.class public Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;
.super Landroid/support/v4/app/Fragment;
.source "Tab2DartsPerLeg.java"


# instance fields
.field dartsThrownToWinLeg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field nameP1:Ljava/lang/String;

.field nameP2:Ljava/lang/String;

.field p1Name:Landroid/widget/TextView;

.field p2Name:Landroid/widget/TextView;

.field playerToWinLeg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tableLayout:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public displayDartsPerLegValues()V
    .registers 14

    .prologue
    const v12, 0x1030042

    const/16 v11, 0x11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_fa

    .line 53
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v5, "trparams":Landroid/widget/TableLayout$LayoutParams;
    new-instance v4, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 55
    .local v4, "tableRow":Landroid/widget/TableRow;
    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_e6

    .line 58
    const v6, 0x7f0c001f

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 62
    :goto_2d
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "legNum":Landroid/widget/TextView;
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v9, v8, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v1, v6, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {v4, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "player1DartsThrown":Landroid/widget/TextView;
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v9, v8, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->playerToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 73
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_96
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v2, v6, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    invoke-virtual {v4, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 80
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v3, "player2DartsThrown":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v9, v8, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->playerToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 84
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_d3
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v3, v6, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 90
    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v6, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 60
    .end local v1    # "legNum":Landroid/widget/TextView;
    .end local v2    # "player1DartsThrown":Landroid/widget/TextView;
    .end local v3    # "player2DartsThrown":Landroid/widget/TextView;
    :cond_e6
    const v6, 0x7f0c0039

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto/16 :goto_2d

    .line 75
    .restart local v1    # "legNum":Landroid/widget/TextView;
    .restart local v2    # "player1DartsThrown":Landroid/widget/TextView;
    :cond_ee
    const-string v6, "-"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_96

    .line 86
    .restart local v3    # "player2DartsThrown":Landroid/widget/TextView;
    :cond_f4
    const-string v6, "-"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d3

    .line 93
    .end local v1    # "legNum":Landroid/widget/TextView;
    .end local v2    # "player1DartsThrown":Landroid/widget/TextView;
    .end local v3    # "player2DartsThrown":Landroid/widget/TextView;
    .end local v4    # "tableRow":Landroid/widget/TableRow;
    .end local v5    # "trparams":Landroid/widget/TableLayout$LayoutParams;
    :cond_fa
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const v2, 0x7f040025

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->p1Name:Landroid/widget/TextView;

    .line 30
    const v2, 0x7f0d011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->p2Name:Landroid/widget/TextView;

    .line 31
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->tableLayout:Landroid/widget/TableLayout;

    .line 33
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_57

    .line 35
    const-string v2, "dartsThrownforWinningLeg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    .line 36
    const-string v2, "playerToWinLegList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->playerToWinLeg:Ljava/util/ArrayList;

    .line 37
    const-string v2, "p1sName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP1:Ljava/lang/String;

    .line 38
    const-string v2, "p2sName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP2:Ljava/lang/String;

    .line 41
    :cond_57
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->p1Name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->p2Name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->nameP2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/Tab2DartsPerLeg;->displayDartsPerLegValues()V

    .line 46
    return-object v1
.end method
