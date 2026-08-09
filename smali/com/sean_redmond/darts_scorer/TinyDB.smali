###### Class com.sean_redmond.darts_scorer.TinyDB (com.sean_redmond.darts_scorer.TinyDB)
.class public Lcom/sean_redmond/darts_scorer/TinyDB;
.super Ljava/lang/Object;
.source "TinyDB.java"


# instance fields
.field private DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

.field private lastImagePath:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->lastImagePath:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    .line 54
    return-void
.end method

.method public static isExternalStorageReadable()Z
    .registers 2

    .prologue
    .line 531
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted_ro"

    .line 534
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isExternalStorageWritable()Z
    .registers 2

    .prologue
    .line 523
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p1, "fullPath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 143
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 186
    :cond_5
    :goto_5
    return v7

    .line 146
    :cond_6
    const/4 v2, 0x0

    .line 147
    .local v2, "fileCreated":Z
    const/4 v0, 0x0

    .line 148
    .local v0, "bitmapCompressed":Z
    const/4 v6, 0x0

    .line 150
    .local v6, "streamClosed":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 157
    :cond_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3e

    move-result v2

    .line 163
    :goto_1e
    const/4 v4, 0x0

    .line 165
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_4a
    .catchall {:try_start_1f .. :try_end_24} :catchall_5f

    .line 166
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_24
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p2, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_73
    .catchall {:try_start_24 .. :try_end_2b} :catchall_70

    move-result v0

    .line 173
    if-eqz v5, :cond_76

    .line 175
    :try_start_2e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_43

    .line 177
    const/4 v6, 0x1

    move-object v4, v5

    .line 186
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_36
    :goto_36
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    .line 159
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_43
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const/4 v6, 0x0

    move-object v4, v5

    .line 182
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_36

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4a
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5f

    .line 170
    const/4 v0, 0x0

    .line 173
    if-eqz v4, :cond_36

    .line 175
    :try_start_51
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_59

    .line 177
    const/4 v6, 0x1

    goto :goto_36

    .line 179
    :catch_59
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const/4 v6, 0x0

    .line 182
    goto :goto_36

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5f
    move-exception v7

    :goto_60
    if-eqz v4, :cond_69

    .line 175
    :try_start_62
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_6a

    .line 177
    const/4 v6, 0x1

    .line 182
    :cond_69
    :goto_69
    throw v7

    .line 179
    :catch_6a
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const/4 v6, 0x0

    goto :goto_69

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_70
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_60

    .line 168
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_73
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4b

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_76
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_36
.end method

.method private setupFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v0, "mFolder":Ljava/io/File;
    invoke-static {}, Lcom/sean_redmond/darts_scorer/TinyDB;->isExternalStorageReadable()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/sean_redmond/darts_scorer/TinyDB;->isExternalStorageWritable()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 128
    const-string v1, "ERROR"

    const-string v2, "Failed to setup folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, ""

    .line 133
    :goto_2c
    return-object v1

    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c
.end method


# virtual methods
.method public checkForNullKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p1, :cond_8

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 541
    :cond_8
    return-void
.end method

.method public checkForNullValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_8

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_8
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    return-void
.end method

.method public deleteImage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "number":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 239
    .end local p2    # "defaultValue":D
    :goto_8
    return-wide p2

    .line 238
    .restart local p2    # "defaultValue":D
    :catch_9
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "bitmapFromPath":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 72
    :goto_5
    return-object v0

    .line 67
    :catch_6
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getListBoolean(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->getListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    .local v1, "myList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "item":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 292
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 294
    :cond_2a
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 298
    .end local v0    # "item":Ljava/lang/String;
    :cond_33
    return-object v2
.end method

.method public getListDouble(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u201a\u2017\u201a"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "myList":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v0, "arrayToList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v3, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 256
    .end local v1    # "item":Ljava/lang/String;
    :cond_38
    return-object v3
.end method

.method public getListInt(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "dartsThrownToWinLeg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u201a\u2017\u201a"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "myList":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v0, "arrayToList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v3, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 208
    .end local v1    # "item":Ljava/lang/String;
    :cond_38
    return-object v3
.end method

.method public getListString(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u201a\u2017\u201a"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSavedImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->lastImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 377
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sean_redmond/darts_scorer/TinyDB;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 368
    return-void
.end method

.method public putImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6
    .param p1, "theFolder"    # Ljava/lang/String;
    .param p2, "theImageName"    # Ljava/lang/String;
    .param p3, "theBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_8

    .line 94
    :cond_6
    const/4 v0, 0x0

    .line 104
    :cond_7
    :goto_7
    return-object v0

    .line 96
    :cond_8
    iput-object p1, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p2}, Lcom/sean_redmond/darts_scorer/TinyDB;->setupFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "mFullPath":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 100
    iput-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->lastImagePath:Ljava/lang/String;

    .line 101
    invoke-direct {p0, v0, p3}, Lcom/sean_redmond/darts_scorer/TinyDB;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_7
.end method

.method public putImageWithFullPath(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "fullPath"    # Ljava/lang/String;
    .param p2, "theBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/sean_redmond/darts_scorer/TinyDB;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    return-void
.end method

.method public putListBoolean(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p2, "boolList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 432
    .local v0, "item":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 433
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 435
    :cond_24
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 439
    .end local v0    # "item":Ljava/lang/Boolean;
    :cond_2a
    invoke-virtual {p0, p1, v1}, Lcom/sean_redmond/darts_scorer/TinyDB;->putListString(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 440
    return-void
.end method

.method public putListDouble(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "doubleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 388
    .local v0, "myDoubleList":[Ljava/lang/Double;
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "\u201a\u2017\u201a"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    return-void
.end method

.method public putListInt(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 347
    .local v0, "myIntList":[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "\u201a\u2017\u201a"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    return-void
.end method

.method public putListString(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 409
    .local v0, "myStringList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "\u201a\u2017\u201a"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sean_redmond/darts_scorer/TinyDB;->checkForNullValue(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 505
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sean_redmond/darts_scorer/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 515
    return-void
.end method
