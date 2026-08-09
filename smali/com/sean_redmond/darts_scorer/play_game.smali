###### Class com.sean_redmond.darts_scorer.play_game (com.sean_redmond.darts_scorer.play_game)
.class public Lcom/sean_redmond/darts_scorer/play_game;
.super Landroid/support/v7/app/ActionBarActivity;
.source "play_game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sean_redmond/darts_scorer/play_game$CounterClass;
    }
.end annotation


# static fields
.field public static final NAME_PREF:Ljava/lang/String; = "namePreference"


# instance fields
.field bestScore:[I

.field checkoutIn1:Landroid/widget/Button;

.field checkoutIn2:Landroid/widget/Button;

.field checkoutIn3:Landroid/widget/Button;

.field cpuAverageScore:I

.field currentlyP1Icon:Landroid/widget/TextView;

.field currentlyP2Icon:Landroid/widget/TextView;

.field dartsThrown:[I

.field dartsThrownInFirstNine:[I

.field dartsThrownInLeg:[I

.field dartsThrownP1:Landroid/widget/TextView;

.field dartsThrownP2:Landroid/widget/TextView;

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

.field dartsToCheckout:I

.field enterPressed:Landroid/widget/ImageButton;

.field firstNineAve:[F

.field highestCheckout:[I

.field interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field isCpuModeOn:Z

.field isTimerOn:Z

.field legsPlayed:I

.field legsToPlay:I

.field legsWon:[I

.field legsWonP1:Landroid/widget/TextView;

.field legsWonP2:Landroid/widget/TextView;

.field numberOfLegs:Landroid/widget/TextView;

.field p1Name:Ljava/lang/String;

.field p2Name:Ljava/lang/String;

.field player:I

.field player1Name:Landroid/widget/TextView;

.field player2Name:Landroid/widget/TextView;

.field playerId:[I

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

.field playerWithThrow:I

.field pointsScored:[I

.field pointsScoredInFirstNine:[I

.field pressedResumeGame:Z

.field remainingP1:Landroid/widget/TextView;

.field remainingP2:Landroid/widget/TextView;

.field scoreHit:I

.field scoreLeft:[I

.field scored:Landroid/widget/TextView;

.field sixtyPlusScores:[I

.field startingScore:I

.field textViewTime:Landroid/widget/TextView;

.field timePerShot:I

.field timeRunOutPenalty:I

.field timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

.field tonEightyScores:[I

.field tonFortyPlusScores:[I

.field tonPlusScores:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 49
    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 50
    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    .line 51
    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 60
    iput-boolean v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->pressedResumeGame:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    .line 63
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_82

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_9a

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_a2

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_aa

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_b2

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_ba

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_c2

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_ca

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    .line 76
    new-array v0, v1, [F

    fill-array-data v0, :array_d2

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_da

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_e2

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    .line 941
    return-void

    .line 65
    :array_82
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 66
    :array_8a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 67
    :array_92
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 68
    :array_9a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 69
    :array_a2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 70
    :array_aa
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 71
    :array_b2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 72
    :array_ba
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 73
    :array_c2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 74
    :array_ca
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 76
    :array_d2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 77
    :array_da
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 78
    :array_e2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 1
    .param p0, "x0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sean_redmond/darts_scorer/play_game;->reloadTheInterstitial()V

    return-void
.end method

.method private reloadTheInterstitial()V
    .registers 4

    .prologue
    .line 261
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string v2, "0D214B27C8CF2E2138243E80695D4CD6"

    .line 262
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 265
    .local v0, "adRequest":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 266
    return-void
.end method


# virtual methods
.method public checkoutSelection()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    new-instance v1, Lcom/sean_redmond/darts_scorer/play_game$3;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/play_game$3;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    new-instance v1, Lcom/sean_redmond/darts_scorer/play_game$4;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/play_game$4;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    new-instance v1, Lcom/sean_redmond/darts_scorer/play_game$5;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/play_game$5;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method public clearScoreInputted()V
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method public continueGame()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1f5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    const-string v0, "namePreference"

    invoke-virtual {p0, v0, v8}, Lcom/sean_redmond/darts_scorer/play_game;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 272
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "p1sName"

    const-string v1, "Player one"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    .line 273
    const-string v0, "p2sName"

    const-string v1, "Player two"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    const-string v1, "plyr1Id"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 275
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    const-string v1, "plyr2Id"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 276
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    const-string v1, "legsWonP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 277
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    const-string v1, "legsWonP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 278
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    const-string v1, "p1scoreLeft"

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 279
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    const-string v1, "p2scoreLeft"

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 280
    const-string v0, "legsPlayed"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    .line 281
    const-string v0, "totalLegsToPlay"

    const/4 v1, 0x3

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    .line 282
    const-string v0, "playerThrowing"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 283
    const-string v0, "playerWithThrow"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    .line 284
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    const-string v1, "pointsScrdP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 285
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    const-string v1, "pointsScrdP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 286
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    const-string v1, "dartsThrownP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 287
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    const-string v1, "dartsThrownP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 288
    const-string v0, "startScore"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    .line 289
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    const-string v1, "sixtyPlusScoresP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 290
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    const-string v1, "sixtyPlusScoresP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 291
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    const-string v1, "tonPlusScoresP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 292
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    const-string v1, "tonPlusScoresP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 293
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    const-string v1, "tonFortyPlusScoresP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 294
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    const-string v1, "tonFortyPlusScoresP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 295
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    const-string v1, "tonEightyScoresP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 296
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    const-string v1, "tonEightyScoresP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 297
    const-string v0, "isPlayingTimer"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    .line 298
    const-string v0, "timePerShot"

    const/16 v1, 0xa

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timePerShot:I

    .line 299
    const-string v0, "timeoutPeno"

    const/16 v1, 0x64

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timeRunOutPenalty:I

    .line 300
    const-string v0, "isPlayingCpu"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isCpuModeOn:Z

    .line 301
    const-string v0, "cpuAvePoints"

    const/16 v1, 0x23

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->cpuAverageScore:I

    .line 302
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    const-string v1, "dartsThrownInLegP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 303
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    const-string v1, "dartsThrownInLegP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 304
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    const-string v1, "highestScoreP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 305
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    const-string v1, "highestScoreP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 306
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    const-string v1, "firstNineAvgP1"

    invoke-interface {v6, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v8

    .line 307
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    const-string v1, "firstNineAvgP2"

    invoke-interface {v6, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v9

    .line 308
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    const-string v1, "pointsScoredInFirstNineP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 309
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    const-string v1, "pointsScoredInFirstNineP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 310
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    const-string v1, "dartsThrownInFirstNineP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 311
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    const-string v1, "dartsThrownInFirstNineP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 312
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    const-string v1, "highestCheckoutP1"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 313
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    const-string v1, "highestCheckoutP2"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 315
    new-instance v0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->timePerShot:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;-><init>(Lcom/sean_redmond/darts_scorer/play_game;JJ)V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    .line 316
    iget-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    if-eqz v0, :cond_1bd

    .line 317
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->startTimerDialog()V

    .line 318
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->textViewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :cond_1bd
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player1Name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player2Name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->setPlayerPointerIcon()V

    .line 329
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlayTitleMessage()V

    .line 330
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->disableInvalidDartsThrowntoCheckoutOptions()V

    .line 331
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    new-instance v7, Lcom/sean_redmond/darts_scorer/TinyDB;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/sean_redmond/darts_scorer/TinyDB;-><init>(Landroid/content/Context;)V

    .line 337
    .local v7, "tinydb":Lcom/sean_redmond/darts_scorer/TinyDB;
    const-string v0, "dartsThrownToWinLeg"

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v1}, Lcom/sean_redmond/darts_scorer/TinyDB;->getListInt(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    .line 338
    const-string v0, "playerToWinLeg"

    invoke-virtual {v7, v0}, Lcom/sean_redmond/darts_scorer/TinyDB;->getListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    .line 339
    return-void
.end method

.method public cpuCheckoutScore()V
    .registers 5

    .prologue
    .line 688
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 690
    .local v0, "r":Ljava/util/Random;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 691
    .local v1, "successfulCheckout":I
    if-nez v1, :cond_15

    .line 692
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    .line 695
    :goto_14
    return-void

    .line 694
    :cond_15
    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    goto :goto_14
.end method

.method public cpuNonCheckoutScore()V
    .registers 8

    .prologue
    .line 698
    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->cpuAverageScore:I

    add-int/lit8 v0, v4, 0x1e

    .line 699
    .local v0, "max":I
    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->cpuAverageScore:I

    add-int/lit8 v1, v4, -0xa

    .line 700
    .local v1, "min":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 701
    .local v2, "r":Ljava/util/Random;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 702
    .local v3, "variationScoringNum":I
    if-nez v3, :cond_4e

    .line 703
    const/16 v4, 0xb4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    .line 707
    :goto_1f
    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v5, v5, v6

    if-gt v4, v5, :cond_3f

    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v5, v5, v6

    if-eq v4, v5, :cond_3f

    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v5, v5, v6

    if-ne v4, v5, :cond_5a

    .line 708
    :cond_3f
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    goto :goto_1f

    .line 705
    :cond_4e
    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    goto :goto_1f

    .line 710
    :cond_5a
    return-void
.end method

.method public cpuScoreMessage()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU scores: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 715
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 716
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 717
    return-void
.end method

.method public cpuTurn()V
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 226
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4a

    .line 227
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->cpuCheckoutScore()V

    .line 228
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->cpuScoreMessage()V

    .line 229
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateScoreLeft()V

    .line 230
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateStatistics()V

    .line 231
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    if-nez v0, :cond_45

    .line 232
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateHighestCheckout()V

    .line 233
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->incrementLegsWonAndPlayed()V

    .line 234
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updatePlayerToWinLeg()V

    .line 235
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateDartsThrownToWinLeg()V

    .line 236
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->resetScoreboardOnLegCompletion()V

    .line 237
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    if-ne v0, v1, :cond_46

    .line 238
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->insertStatsOnGameComplete()V

    .line 239
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->displayMessageOnGameComplete()V

    .line 240
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->navigateToStats()V

    .line 253
    :cond_45
    :goto_45
    return-void

    .line 243
    :cond_46
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->switchPlayerWithThrow()V

    goto :goto_45

    .line 246
    :cond_4a
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->cpuNonCheckoutScore()V

    .line 247
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->cpuScoreMessage()V

    .line 248
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateScoreLeft()V

    .line 249
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateStatistics()V

    .line 250
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->switchPlayer()V

    goto :goto_45
.end method

.method public deleteClicked(Landroid/view/View;)V
    .registers 5
    .param p1, "sender"    # Landroid/view/View;

    .prologue
    .line 781
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "scoreInputted":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_22

    .line 783
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :goto_21
    return-void

    .line 786
    :cond_22
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method public disableInvalidDartsThrowntoCheckoutOptions()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 646
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x28

    if-gt v0, v1, :cond_18

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_22

    :cond_18
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x32

    if-ne v0, v1, :cond_49

    .line 648
    :cond_22
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 649
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 653
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 654
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 655
    iput v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 680
    :goto_48
    return-void

    .line 657
    :cond_49
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x63

    if-lt v0, v1, :cond_85

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x68

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_ac

    .line 660
    :cond_85
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 665
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 666
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 667
    iput v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    goto :goto_48

    .line 671
    :cond_ac
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 672
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 673
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 676
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 677
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 678
    iput v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    goto/16 :goto_48
.end method

.method public displayMessageOnGameComplete()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Game completed!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 555
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 556
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->finish()V

    .line 558
    return-void
.end method

.method public humanPlayerTurn()V
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->isValidScore()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 194
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateScoreLeft()V

    .line 195
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->clearScoreInputted()V

    .line 196
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateStatistics()V

    .line 197
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    if-nez v0, :cond_48

    .line 198
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateHighestCheckout()V

    .line 199
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->incrementLegsWonAndPlayed()V

    .line 200
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updateDartsThrownToWinLeg()V

    .line 201
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->updatePlayerToWinLeg()V

    .line 202
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    if-ne v0, v1, :cond_37

    .line 203
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->insertStatsOnGameComplete()V

    .line 204
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->displayMessageOnGameComplete()V

    .line 205
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->navigateToStats()V

    .line 222
    :cond_36
    :goto_36
    return-void

    .line 208
    :cond_37
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->switchPlayerWithThrow()V

    .line 209
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->setPlayerPointerIcon()V

    .line 210
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->resetScoreboardOnLegCompletion()V

    .line 216
    :goto_40
    iget-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    if-eqz v0, :cond_36

    .line 217
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->startClock()V

    goto :goto_36

    .line 212
    :cond_48
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->playSoundEffects()V

    .line 213
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->switchPlayer()V

    .line 214
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->setPlayerPointerIcon()V

    goto :goto_40

    .line 219
    :cond_52
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->showInvalidScoreMessage()V

    .line 220
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->clearScoreInputted()V

    goto :goto_36
.end method

.method public incrementLegsWonAndPlayed()V
    .registers 4

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 544
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_24

    .line 545
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :goto_1d
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    .line 550
    return-void

    .line 547
    :cond_24
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method public inputScore(Landroid/view/View;)V
    .registers 5
    .param p1, "sender"    # Landroid/view/View;

    .prologue
    .line 398
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 400
    .local v0, "numberButton":Landroid/widget/Button;
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 414
    :cond_10
    :goto_10
    return-void

    .line 403
    :cond_11
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 404
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_2c
    iget-boolean v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    if-eqz v1, :cond_10

    .line 409
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    invoke-virtual {v1}, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->cancel()V

    .line 410
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 411
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    const-string v2, "#6face7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_10

    .line 406
    :cond_47
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method public insertStatsOnGameComplete()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 561
    new-instance v0, Lcom/sean_redmond/darts_scorer/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "dbh":Lcom/sean_redmond/darts_scorer/DatabaseHelper;
    iget-boolean v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->isCpuModeOn:Z

    if-eqz v1, :cond_30

    .line 563
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    aget v1, v1, v11

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v3, v3, v11

    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v4, v4, v11

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v9, v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->insertStats(IIIIIIIII)Z

    .line 568
    :cond_2f
    return-void

    .line 565
    :cond_30
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_31
    const/4 v1, 0x2

    if-ge v10, v1, :cond_2f

    .line 566
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    aget v1, v1, v10

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v7, v7, v10

    iget-object v8, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v8, v8, v10

    iget-object v9, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v9, v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->insertStats(IIIIIIIII)Z

    .line 565
    add-int/lit8 v10, v10, 0x1

    goto :goto_31
.end method

.method public isValidScore()Z
    .registers 8

    .prologue
    .line 418
    const/4 v3, 0x1

    .line 420
    .local v3, "isScoreValid":Z
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    .line 422
    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v5, 0xb4

    if-gt v4, v5, :cond_2d

    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v5, v5, v6

    if-gt v4, v5, :cond_2d

    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v6, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v5, v5, v6

    if-ne v4, v5, :cond_2e

    .line 423
    :cond_2d
    const/4 v3, 0x0

    .line 425
    :cond_2e
    const/16 v4, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_62

    .line 426
    .local v2, "invalidScores":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    array-length v4, v2

    if-ge v0, v4, :cond_43

    .line 427
    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    aget v5, v2, v0

    if-ne v4, v5, :cond_40

    .line 428
    const/4 v3, 0x0

    .line 426
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 431
    :cond_43
    const/4 v4, 0x5

    new-array v1, v4, [I

    fill-array-data v1, :array_7e

    .line 432
    .local v1, "invalidCheckoutScores":[I
    const/4 v0, 0x0

    :goto_4a
    array-length v4, v1

    if-ge v0, v4, :cond_61

    .line 433
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v4, v4, v5

    iget v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-ne v4, v5, :cond_5e

    aget v4, v1, v0

    iget v5, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-ne v4, v5, :cond_5e

    .line 434
    const/4 v3, 0x0

    .line 432
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 437
    :cond_61
    return v3

    .line 425
    :array_62
    .array-data 4
        0xb3
        0xb2
        0xb0
        0xaf
        0xad
        0xac
        0xa9
        0xa8
        0xa6
        0xa5
        0xa3
        0xa2
    .end array-data

    .line 431
    :array_7e
    .array-data 4
        0x9f
        0xab
        0xae
        0xb1
        0xb4
    .end array-data
.end method

.method public legsToPlayTitleMessage()V
    .registers 4

    .prologue
    .line 342
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 343
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->numberOfLegs:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_25
    return-void

    .line 345
    :cond_26
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->numberOfLegs:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " legs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method public navigateToStats()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sean_redmond/darts_scorer/GameStatistics;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "sixtyPlusScoresP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v1, "sixtyPlusScoresP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const-string v1, "tonPlusScoresP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v1, "tonPlusScoresP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string v1, "tonFortyPlusScoresP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v1, "tonFortyPlusScoresP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "tonEightyScoresP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v1, "tonEightyScoresP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "dartsThrownP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v1, "dartsThrownP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v1, "pointsScoredP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v1, "pointsScoredP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    const-string v1, "legsWonP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v1, "legsWonP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const-string v1, "p1sName"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v1, "p2sName"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v1, "dartsThrownforWinningLeg"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 589
    const-string v1, "playerToWinLegList"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 590
    const-string v1, "bestScoreP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v1, "bestScoreP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v1, "firstNineAveP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 593
    const-string v1, "firstNineAveP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 594
    const-string v1, "highestCheckoutP1"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string v1, "highestCheckoutP2"

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->startActivity(Landroid/content/Intent;)V

    .line 598
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    if-ne v1, v2, :cond_fa

    .line 599
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 600
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    .line 601
    :cond_f7
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->resetScores()V

    .line 603
    :cond_fa
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->setContentView(I)V

    .line 87
    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/ads/AdView;

    .line 89
    .local v8, "mAdView":Lcom/google/android/gms/ads/AdView;
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "0D214B27C8CF2E2138243E80695D4CD6"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "374B7BE5730416B01114B3E01B782252"

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v6

    .line 94
    .local v6, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v8, v6}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 97
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 98
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    new-instance v1, Lcom/sean_redmond/darts_scorer/play_game$1;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/play_game$1;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 105
    invoke-direct {p0}, Lcom/sean_redmond/darts_scorer/play_game;->reloadTheInterstitial()V

    .line 107
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->textViewTime:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP1:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP2:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->numberOfLegs:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player1Name:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player2Name:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP1Icon:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP2Icon:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    .line 119
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    .line 120
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    .line 121
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    .line 122
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sean_redmond/darts_scorer/play_game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 127
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_17f

    .line 128
    const-string v0, "timerStartFrom"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timePerShot:I

    .line 129
    const-string v0, "timeUpPenalty"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timeRunOutPenalty:I

    .line 130
    const-string v0, "timerModeSelection"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    .line 131
    const-string v0, "legsToPlay"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    .line 132
    const-string v0, "scoreStartFrom"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    .line 133
    const-string v0, "p1Name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    .line 134
    const-string v0, "p2Name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    const-string v1, "p1Id"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v10

    .line 136
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    const-string v1, "p2Id"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v11

    .line 137
    const-string v0, "isPlayCpuMode"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isCpuModeOn:Z

    .line 138
    const-string v0, "cpuAverageScore"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->cpuAverageScore:I

    .line 139
    const-string v0, "pressedResumeMatch"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pressedResumeGame:Z

    .line 142
    :cond_17f
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 146
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->onEnterClicked()V

    .line 147
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->checkoutSelection()V

    .line 148
    new-instance v0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->timePerShot:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;-><init>(Lcom/sean_redmond/darts_scorer/play_game;JJ)V

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    .line 149
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/digitalClockFont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 150
    .local v9, "type":Landroid/graphics/Typeface;
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->textViewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iget-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pressedResumeGame:Z

    if-eqz v0, :cond_1c5

    .line 153
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->continueGame()V

    .line 175
    :cond_1c4
    :goto_1c4
    return-void

    .line 157
    :cond_1c5
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    aput v1, v0, v10

    .line 158
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    aput v1, v0, v11

    .line 159
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP1:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP2:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player1Name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player2Name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlayTitleMessage()V

    .line 169
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->setPlayerPointerIcon()V

    .line 171
    iget-boolean v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    if-eqz v0, :cond_1c4

    .line 172
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->startTimerDialog()V

    .line 173
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->textViewTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 923
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 924
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onEnterClicked()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sean_redmond/darts_scorer/play_game$2;

    invoke-direct {v1, p0}, Lcom/sean_redmond/darts_scorer/play_game$2;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 929
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 937
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 931
    :pswitch_d
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->resetScoresOptionDialog()V

    goto :goto_c

    .line 934
    :pswitch_11
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->navigateToStats()V

    goto :goto_c

    .line 929
    nop

    :pswitch_data_16
    .packed-switch 0x7f0d011e
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method protected onStop()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 865
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 867
    const-string v2, "namePreference"

    invoke-virtual {p0, v2, v4}, Lcom/sean_redmond/darts_scorer/play_game;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 869
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "p1sName"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    const-string v2, "p2sName"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    const-string v2, "plyr1Id"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 872
    const-string v2, "plyr2Id"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerId:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 873
    const-string v2, "legsWonP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 874
    const-string v2, "legsWonP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 875
    const-string v2, "legsPlayed"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 876
    const-string v2, "totalLegsToPlay"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsToPlay:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string v2, "playerThrowing"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string v2, "playerWithThrow"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 879
    const-string v2, "p1scoreLeft"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v2, "p2scoreLeft"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v2, "pointsScrdP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v2, "pointsScrdP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 883
    const-string v2, "dartsThrownP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 884
    const-string v2, "dartsThrownP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 885
    const-string v2, "startScore"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 886
    const-string v2, "sixtyPlusScoresP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 887
    const-string v2, "sixtyPlusScoresP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 888
    const-string v2, "tonPlusScoresP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 889
    const-string v2, "tonPlusScoresP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 890
    const-string v2, "tonFortyPlusScoresP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 891
    const-string v2, "tonFortyPlusScoresP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 892
    const-string v2, "tonEightyScoresP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v2, "tonEightyScoresP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 894
    const-string v2, "isPlayingTimer"

    iget-boolean v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 895
    const-string v2, "timePerShot"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->timePerShot:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 896
    const-string v2, "timeoutPeno"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->timeRunOutPenalty:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 897
    const-string v2, "isPlayingCpu"

    iget-boolean v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->isCpuModeOn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 898
    const-string v2, "cpuAvePoints"

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->cpuAverageScore:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 899
    const-string v2, "dartsThrownInLegP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 900
    const-string v2, "dartsThrownInLegP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 901
    const-string v2, "highestScoreP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 902
    const-string v2, "highestScoreP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 903
    const-string v2, "firstNineAvgP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 904
    const-string v2, "firstNineAvgP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 905
    const-string v2, "pointsScoredInFirstNineP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 906
    const-string v2, "pointsScoredInFirstNineP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 907
    const-string v2, "dartsThrownInFirstNineP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 908
    const-string v2, "dartsThrownInFirstNineP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 909
    const-string v2, "highestCheckoutP1"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 910
    const-string v2, "highestCheckoutP2"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 912
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 915
    new-instance v1, Lcom/sean_redmond/darts_scorer/TinyDB;

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sean_redmond/darts_scorer/TinyDB;-><init>(Landroid/content/Context;)V

    .line 916
    .local v1, "tinydb":Lcom/sean_redmond/darts_scorer/TinyDB;
    const-string v2, "dartsThrownToWinLeg"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/sean_redmond/darts_scorer/TinyDB;->putListInt(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 917
    const-string v2, "playerToWinLeg"

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/sean_redmond/darts_scorer/TinyDB;->putListString(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 918
    return-void
.end method

.method public playSoundEffects()V
    .registers 11

    .prologue
    const v9, 0x7f060001

    const/high16 v8, 0x7f060000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 467
    new-instance v0, Landroid/media/SoundPool;

    const/4 v3, 0x5

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 469
    .local v0, "sp":Landroid/media/SoundPool;
    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v5, 0xb4

    if-ne v3, v5, :cond_2e

    .line 470
    const v3, 0x7f060002

    invoke-virtual {v0, p0, v3, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .local v1, "soundId":I
    move v3, v2

    move v5, v4

    move v6, v2

    .line 471
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 472
    const v2, 0x7f060002

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 473
    .local v7, "mPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 492
    .end local v1    # "soundId":I
    .end local v7    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_2d
    :goto_2d
    return-void

    .line 474
    :cond_2e
    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v5, 0x8c

    if-ne v3, v5, :cond_46

    .line 475
    invoke-virtual {v0, p0, v9, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .restart local v1    # "soundId":I
    move v3, v2

    move v5, v4

    move v6, v2

    .line 476
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 477
    invoke-static {p0, v9}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 478
    .restart local v7    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto :goto_2d

    .line 479
    .end local v1    # "soundId":I
    .end local v7    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_46
    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_5e

    .line 480
    invoke-virtual {v0, p0, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .restart local v1    # "soundId":I
    move v3, v2

    move v5, v4

    move v6, v2

    .line 481
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 482
    invoke-static {p0, v8}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 483
    .restart local v7    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto :goto_2d

    .line 484
    .end local v1    # "soundId":I
    .end local v7    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_5e
    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_2d

    .line 485
    const v3, 0x7f060003

    invoke-virtual {v0, p0, v3, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .restart local v1    # "soundId":I
    move v3, v2

    move v5, v4

    move v6, v2

    .line 486
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 487
    const v2, 0x7f060003

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 488
    .restart local v7    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto :goto_2d
.end method

.method public resetScoreboardOnLegCompletion()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    aput v1, v0, v2

    .line 634
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    aput v1, v0, v3

    .line 635
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aput v2, v0, v2

    .line 639
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aput v2, v0, v3

    .line 640
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    return-void
.end method

.method public resetScores()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 813
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_4
    if-gt v0, v5, :cond_44

    .line 814
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    aput v2, v1, v0

    .line 815
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWon:[I

    aput v3, v1, v0

    .line 816
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    aput v3, v1, v0

    .line 817
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    aput v3, v1, v0

    .line 818
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    aput v3, v1, v0

    .line 819
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    aput v3, v1, v0

    .line 820
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    aput v3, v1, v0

    .line 821
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    aput v3, v1, v0

    .line 822
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aput v3, v1, v0

    .line 823
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    aput v3, v1, v0

    .line 824
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    aput v3, v1, v0

    .line 825
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 826
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    aput v3, v1, v0

    .line 827
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    aput v3, v1, v0

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 830
    :cond_44
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 831
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 833
    iput v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsPlayed:I

    .line 834
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scored:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->startingScore:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP1:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->legsWonP2:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iput v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 843
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->setPlayerPointerIcon()V

    .line 845
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 846
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 847
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 849
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 850
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 851
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v2, "#6face7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 852
    const/4 v1, 0x3

    iput v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 854
    return-void
.end method

.method public resetScoresOptionDialog()V
    .registers 4

    .prologue
    .line 791
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Restart Match?"

    .line 792
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Are you sure you want to restart this match?"

    .line 793
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/sean_redmond/darts_scorer/play_game$9;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/play_game$9;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    .line 794
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/sean_redmond/darts_scorer/play_game$8;

    invoke-direct {v2, p0}, Lcom/sean_redmond/darts_scorer/play_game$8;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    .line 799
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 808
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 810
    return-void
.end method

.method public setPlayerPointerIcon()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 623
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_11

    .line 624
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP1Icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP2Icon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    :goto_10
    return-void

    .line 627
    :cond_11
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP2Icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->currentlyP1Icon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10
.end method

.method public showInvalidScoreMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Invalid score, try again!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 444
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 445
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    return-void
.end method

.method public startClock()V
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->start()Landroid/os/CountDownTimer;

    .line 721
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    const-string v1, "#cfcecf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 723
    return-void
.end method

.method public startTimerDialog()V
    .registers 6

    .prologue
    .line 727
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 729
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v3, "Press Start to Begin Timer"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 730
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 732
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 733
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 735
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 736
    .local v1, "image":Landroid/widget/ImageView;
    const v3, 0x7f02004a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 739
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 741
    const-string v3, "Start"

    new-instance v4, Lcom/sean_redmond/darts_scorer/play_game$6;

    invoke-direct {v4, p0}, Lcom/sean_redmond/darts_scorer/play_game$6;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 748
    return-void
.end method

.method public switchPlayer()V
    .registers 2

    .prologue
    .line 616
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_8

    .line 617
    const/4 v0, 0x1

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 620
    :goto_7
    return-void

    .line 619
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    goto :goto_7
.end method

.method public switchPlayerWithThrow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    if-nez v0, :cond_b

    .line 607
    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 608
    iput v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    .line 613
    :goto_a
    return-void

    .line 610
    :cond_b
    iput v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    .line 611
    iput v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerWithThrow:I

    goto :goto_a
.end method

.method public timeUpDialog()V
    .registers 7

    .prologue
    .line 752
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 754
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sean_redmond/darts_scorer/play_game;->timeRunOutPenalty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 755
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 757
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 758
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 761
    .local v1, "image":Landroid/widget/ImageView;
    const v3, 0x7f020050

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/play_game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sean_redmond/darts_scorer/play_game$7;

    invoke-direct {v4, p0}, Lcom/sean_redmond/darts_scorer/play_game$7;-><init>(Lcom/sean_redmond/darts_scorer/play_game;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    :try_start_5e
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    .line 777
    :goto_61
    return-void

    .line 774
    :catch_62
    move-exception v3

    goto :goto_61
.end method

.method public updateDartsThrownToWinLeg()V
    .registers 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownToWinLeg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    return-void
.end method

.method public updateHighestCheckout()V
    .registers 4

    .prologue
    .line 256
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    if-le v0, v1, :cond_12

    .line 257
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->highestCheckout:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    aput v2, v0, v1

    .line 258
    :cond_12
    return-void
.end method

.method public updatePlayerToWinLeg()V
    .registers 3

    .prologue
    .line 857
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_c

    .line 858
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :goto_b
    return-void

    .line 860
    :cond_c
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->playerToWinLeg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public updateScoreLeft()V
    .registers 5

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 454
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_23

    .line 455
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_22
    return-void

    .line 457
    :cond_23
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->remainingP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public updateStatistics()V
    .registers 8

    .prologue
    const/16 v3, 0x8c

    const/16 v2, 0x64

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 496
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_aa

    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-ge v0, v2, :cond_aa

    .line 497
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->sixtyPlusScores:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 505
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScored:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 507
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    if-eqz v0, :cond_e6

    .line 508
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x3

    aput v2, v0, v1

    .line 509
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x3

    aput v2, v0, v1

    .line 515
    :goto_4f
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_106

    .line 516
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :goto_60
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v1, v1, v2

    if-le v0, v1, :cond_76

    .line 522
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_115

    .line 523
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    aput v2, v0, v1

    .line 529
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v0, v0, v1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_a9

    .line 530
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    aput v2, v0, v1

    .line 533
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-nez v0, :cond_123

    .line 534
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    aget v2, v2, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    aput v1, v0, v5

    .line 538
    :cond_a9
    :goto_a9
    return-void

    .line 498
    :cond_aa
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-lt v0, v2, :cond_be

    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-ge v0, v3, :cond_be

    .line 499
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonPlusScores:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_1c

    .line 500
    :cond_be
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    if-lt v0, v3, :cond_d4

    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_d4

    .line 501
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonFortyPlusScores:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_1c

    .line 502
    :cond_d4
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1c

    .line 503
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->tonEightyScores:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_1c

    .line 511
    :cond_e6
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrown:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 512
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v2, v3

    iget v3, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto/16 :goto_4f

    .line 518
    :cond_106
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownP2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInLeg:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_60

    .line 524
    :cond_115
    iget v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    if-ne v0, v4, :cond_76

    .line 525
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->bestScore:[I

    iget v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    iget v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->scoreHit:I

    aput v2, v0, v1

    goto/16 :goto_76

    .line 536
    :cond_123
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game;->firstNineAve:[F

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game;->pointsScoredInFirstNine:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/play_game;->dartsThrownInFirstNine:[I

    aget v2, v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    aput v1, v0, v4

    goto/16 :goto_a9
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass1 (com.sean_redmond.darts_scorer.play_game$1)
.class Lcom/sean_redmond/darts_scorer/play_game$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "play_game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$1;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$1;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-static {v0}, Lcom/sean_redmond/darts_scorer/play_game;->access$000(Lcom/sean_redmond/darts_scorer/play_game;)V

    .line 103
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass2 (com.sean_redmond.darts_scorer.play_game$2)
.class Lcom/sean_redmond/darts_scorer/play_game$2;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->onEnterClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$2;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$2;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->humanPlayerTurn()V

    .line 183
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$2;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-boolean v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->isCpuModeOn:Z

    if-eqz v0, :cond_10

    .line 184
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$2;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->cpuTurn()V

    .line 185
    :cond_10
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$2;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->disableInvalidDartsThrowntoCheckoutOptions()V

    .line 186
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass3 (com.sean_redmond.darts_scorer.play_game$3)
.class Lcom/sean_redmond/darts_scorer/play_game$3;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->checkoutSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$3;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 355
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$3;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 357
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$3;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 358
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$3;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 359
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$3;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 361
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass4 (com.sean_redmond.darts_scorer.play_game$4)
.class Lcom/sean_redmond/darts_scorer/play_game$4;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->checkoutSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$4;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 370
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$4;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 372
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$4;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 373
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$4;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 374
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$4;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 376
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass5 (com.sean_redmond.darts_scorer.play_game$5)
.class Lcom/sean_redmond/darts_scorer/play_game$5;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->checkoutSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$5;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 385
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$5;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sean_redmond/darts_scorer/play_game;->dartsToCheckout:I

    .line 387
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$5;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 388
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$5;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 389
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$5;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->checkoutIn3:Landroid/widget/Button;

    const-string v1, "#6face7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 390
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass6 (com.sean_redmond.darts_scorer.play_game$6)
.class Lcom/sean_redmond/darts_scorer/play_game$6;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->startTimerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$6;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$6;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->startClock()V

    .line 744
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass7 (com.sean_redmond.darts_scorer.play_game$7)
.class Lcom/sean_redmond/darts_scorer/play_game$7;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->timeUpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$7;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$7;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->humanPlayerTurn()V

    .line 769
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass8 (com.sean_redmond.darts_scorer.play_game$8)
.class Lcom/sean_redmond/darts_scorer/play_game$8;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->resetScoresOptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$8;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$8;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->resetScores()V

    .line 802
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$8;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-boolean v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->isTimerOn:Z

    if-eqz v0, :cond_17

    .line 803
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$8;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->timer:Lcom/sean_redmond/darts_scorer/play_game$CounterClass;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->cancel()V

    .line 804
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$8;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->startTimerDialog()V

    .line 806
    :cond_17
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.AnonymousClass9 (com.sean_redmond.darts_scorer.play_game$9)
.class Lcom/sean_redmond/darts_scorer/play_game$9;
.super Ljava/lang/Object;
.source "play_game.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sean_redmond/darts_scorer/play_game;->resetScoresOptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$9;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 797
    return-void
.end method

###### Class com.sean_redmond.darts_scorer.play_game.CounterClass (com.sean_redmond.darts_scorer.play_game$CounterClass)
.class public Lcom/sean_redmond/darts_scorer/play_game$CounterClass;
.super Landroid/os/CountDownTimer;
.source "play_game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sean_redmond/darts_scorer/play_game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CounterClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sean_redmond/darts_scorer/play_game;


# direct methods
.method public constructor <init>(Lcom/sean_redmond/darts_scorer/play_game;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/sean_redmond/darts_scorer/play_game;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 943
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    .line 944
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 945
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    .prologue
    .line 960
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->enterPressed:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 961
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v0, v0, Lcom/sean_redmond/darts_scorer/play_game;->scoreLeft:[I

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget v1, v1, Lcom/sean_redmond/darts_scorer/play_game;->player:I

    aget v2, v0, v1

    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget v3, v3, Lcom/sean_redmond/darts_scorer/play_game;->timeRunOutPenalty:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 962
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    invoke-virtual {v0}, Lcom/sean_redmond/darts_scorer/play_game;->timeUpDialog()V

    .line 964
    return-void
.end method

.method public onTick(J)V
    .registers 16
    .param p1, "millisUntilFinished"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 952
    move-wide v0, p1

    .line 953
    .local v0, "millis":J
    const-string v3, "%02d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "secs":Ljava/lang/String;
    iget-object v3, p0, Lcom/sean_redmond/darts_scorer/play_game$CounterClass;->this$0:Lcom/sean_redmond/darts_scorer/play_game;

    iget-object v3, v3, Lcom/sean_redmond/darts_scorer/play_game;->textViewTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    return-void
.end method
