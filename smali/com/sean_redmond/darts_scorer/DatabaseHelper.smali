###### Class com.sean_redmond.darts_scorer.DatabaseHelper (com.sean_redmond.darts_scorer.DatabaseHelper)
.class public Lcom/sean_redmond/darts_scorer/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DARTS_THROWN:Ljava/lang/String; = "DARTS_THROWN"

.field public static final DATABASE_NAME:Ljava/lang/String; = "DartsScorer.db"

.field public static final LEGS_PLAYED_COL:Ljava/lang/String; = "LEGS_PLAYED"

.field public static final LEGS_WON_COL:Ljava/lang/String; = "LEGS_WON"

.field public static final NAME_COL:Ljava/lang/String; = "NAME"

.field public static final ONE_EIGHTIES_COL:Ljava/lang/String; = "ONE_EIGHTIES"

.field public static final ONE_FORTY_PLUS_COL:Ljava/lang/String; = "ONE_FORTIES"

.field public static final ONE_HUNDRED_PLUS_COL:Ljava/lang/String; = "ONE_HUNDREDS"

.field public static final PLAYERS_TABLE:Ljava/lang/String; = "PLAYERS_TABLE"

.field public static final PLAYER_ID:Ljava/lang/String; = "ID"

.field public static final PLAYER_ID_FK:Ljava/lang/String; = "PLAYER_ID_FK"

.field public static final POINTS_SCORED:Ljava/lang/String; = "POINTS_SCORED"

.field public static final SIXTY_PLUS_COL:Ljava/lang/String; = "SIXTIES"

.field public static final STATS_ID:Ljava/lang/String; = "ID"

.field public static final STATS_TABLE:Ljava/lang/String; = "STATS_TABLE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "DartsScorer.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public deletePlayer(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "PLAYERS_TABLE"

    const-string v2, "id =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public insertPlayer(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 64
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "PLAYERS_TABLE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 67
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1d

    .line 68
    const/4 v4, 0x0

    .line 70
    :goto_1c
    return v4

    :cond_1d
    const/4 v4, 0x1

    goto :goto_1c
.end method

.method public insertStats(IIIIIIIII)Z
    .registers 16
    .param p1, "playerIdFk"    # I
    .param p2, "legsPlayed"    # I
    .param p3, "legsWon"    # I
    .param p4, "sixties"    # I
    .param p5, "oneHundreds"    # I
    .param p6, "oneForties"    # I
    .param p7, "oneEighties"    # I
    .param p8, "pointsScored"    # I
    .param p9, "dartsThrown"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "PLAYER_ID_FK"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v4, "LEGS_PLAYED"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v4, "LEGS_WON"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v4, "SIXTIES"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v4, "ONE_HUNDREDS"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v4, "ONE_FORTIES"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v4, "ONE_EIGHTIES"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v4, "POINTS_SCORED"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v4, "DARTS_THROWN"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v4, "STATS_TABLE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 106
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_69

    .line 107
    const/4 v4, 0x0

    .line 109
    :goto_68
    return v4

    :cond_69
    const/4 v4, 0x1

    goto :goto_68
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    const-string v0, "CREATE TABLE PLAYERS_TABLE (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE TABLE STATS_TABLE (ID INTEGER PRIMARY KEY AUTOINCREMENT, LEGS_PLAYED INTEGER, LEGS_WON INTEGER, SIXTIES INTEGER, ONE_HUNDREDS INTEGER, ONE_FORTIES INTEGER, ONE_EIGHTIES INTEGER, POINTS_SCORED INTEGER, DARTS_THROWN INTEGER, PLAYER_ID_FK INTEGER, FOREIGN KEY(PLAYER_ID_FK) REFERENCES PLAYERS_TABLE (ID))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 57
    const-string v0, "DROP TABLE IF EXISTS PLAYERS_TABLE"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TABLE IF EXISTS STATS_TABLE"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method

.method public readPlayers()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select * from PLAYERS_TABLE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 76
    .local v1, "res":Landroid/database/Cursor;
    return-object v1
.end method

.method public readStatsData()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select * from STATS_TABLE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/database/Cursor;
    return-object v1
.end method

.method public updatePlayer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/sean_redmond/darts_scorer/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "PLAYERS_TABLE"

    const-string v3, "id = ?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    return v6
.end method
