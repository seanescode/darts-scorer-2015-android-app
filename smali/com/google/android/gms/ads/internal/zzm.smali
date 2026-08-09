###### Class com.google.android.gms.ads.internal.zzm (com.google.android.gms.ads.internal.zzm)
.class public Lcom/google/android/gms/ads/internal/zzm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method private static zza(Lcom/google/android/gms/internal/zzfb;)Lcom/google/android/gms/ads/internal/formats/zzd;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->zzdK()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getPrice()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfb;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfc;)Lcom/google/android/gms/ads/internal/formats/zze;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->zzdO()Lcom/google/android/gms/internal/zzch;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfc;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzdf;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzm$5;-><init>(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/ads/internal/zzf$zza;Lcom/google/android/gms/internal/zzfc;)V

    return-object v0
.end method

.method static zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzm$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zza(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_f

    const-string v0, "Bitmap is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/png;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static zza(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_a

    const-string v0, "Image is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzch;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_9

    :catch_15
    move-exception v0

    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_1b
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_48

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_48
    const-string v0, "Invalid type. An image type extra should return a bitmap"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_18

    :cond_4e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5c

    const-string v0, "Invalid asset type. Bitmap should be returned only for image type"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_18

    :cond_5c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_68
    move-object v0, v2

    goto :goto_e
.end method

.method public static zza(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/zzf$zza;)V
    .registers 8

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzm;->zzg(Lcom/google/android/gms/internal/zzif;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzen;->zzBM:Ljava/util/List;

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_20
    const-string v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_13

    :catch_26
    move-exception v0

    const-string v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzey;->zzeF()Lcom/google/android/gms/internal/zzfb;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzey;->zzeG()Lcom/google/android/gms/internal/zzfc;

    move-result-object v4

    const-string v5, "2"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    if-eqz v3, :cond_62

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzfb;->zzd(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfb;->getOverrideImpressionRecording()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfb;->recordImpression()V

    :cond_53
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    const-string v1, "/nativeExpressViewClicked"

    const/4 v2, 0x0

    invoke-static {v3, v2, p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzdf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    goto :goto_13

    :cond_62
    const-string v3, "1"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    if-eqz v4, :cond_8b

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzfc;->zzd(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzfc;->getOverrideImpressionRecording()Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzfc;->recordImpression()V

    :cond_7c
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    const-string v1, "/nativeExpressViewClicked"

    const/4 v2, 0x0

    invoke-static {v2, v4, p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzdf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    goto :goto_13

    :cond_8b
    const-string v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_90} :catch_26

    goto :goto_13
.end method

.method private static zza(Lcom/google/android/gms/internal/zzjp;)V
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->zzif()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzm$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzjp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzm$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;Lcom/google/android/gms/internal/zzjp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoaded"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoadingFailed"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzes;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzes;Ljava/util/concurrent/CountDownLatch;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_12

    move-result v0

    :goto_5
    if-nez v0, :cond_a

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_a
    return v0

    :catch_b
    move-exception v1

    const-string v2, "Unable to invoke load assets"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_12
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzm$4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzch;->zzdJ()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Drawable is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_20

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_29

    const-string v0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_d

    :catch_20
    move-exception v0

    const-string v0, "Unable to get drawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_d

    :cond_29
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method static synthetic zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjp;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzes;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "AdWebView is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzen;->zzBM:Ljava/util/List;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1d
    const-string v1, "No template ids present in mediation response"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzes;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzey;->zzeF()Lcom/google/android/gms/internal/zzfb;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzes;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzey;->zzeG()Lcom/google/android/gms/internal/zzfc;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    if-eqz v2, :cond_5c

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzfb;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzen;->zzBL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;)V

    :goto_47
    iget-object v0, p1, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzen;->zzBJ:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzen;->zzBK:Ljava/lang/String;

    if-eqz v1, :cond_78

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    const/4 v0, 0x1

    goto :goto_c

    :cond_5c
    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    if-eqz v3, :cond_72

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzfc;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzen;->zzBL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;)V

    goto :goto_47

    :cond_72
    const-string v1, "No matching template id and mapper"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_c

    :cond_78
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-interface {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzjp;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzch;
    .registers 2

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzch$zza;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzch;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzch;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzm;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzch;

    move-result-object v0

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/zzif;)Landroid/view/View;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_a

    const-string v0, "AdState is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzm;->zzg(Lcom/google/android/gms/internal/zzif;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_9

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_26

    const-string v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    :cond_26
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_9

    :catch_2d
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_9
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzif;)Z
    .registers 2

    if-eqz p0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzif;->zzHT:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzCp:Lcom/google/android/gms/internal/zzen;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzen;->zzBJ:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

###### Class com.google.android.gms.ads.internal.zzm.AnonymousClass1 (com.google.android.gms.ads.internal.zzm$1)
.class final Lcom/google/android/gms/ads/internal/zzm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

.field final synthetic zzqr:Ljava/lang/String;

.field final synthetic zzqs:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzjp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqs:Lcom/google/android/gms/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Z)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "headline"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "call_to_action"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "star_rating"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getStarRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "store"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getStore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "icon"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzdK()Lcom/google/android/gms/internal/zzch;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzch;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_6b

    :catch_81
    move-exception v0

    const-string v1, "Exception occurred when loading assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_87
    return-void

    :cond_88
    :try_start_88
    const-string v2, "images"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqq:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "assets"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "template_id"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzqs:Lcom/google/android/gms/internal/zzjp;

    const-string v2, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzjp;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_b6} :catch_81

    goto :goto_87
.end method

###### Class com.google.android.gms.ads.internal.zzm.AnonymousClass2 (com.google.android.gms.ads.internal.zzm$2)
.class final Lcom/google/android/gms/ads/internal/zzm$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzqr:Ljava/lang/String;

.field final synthetic zzqs:Lcom/google/android/gms/internal/zzjp;

.field final synthetic zzqt:Lcom/google/android/gms/ads/internal/formats/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;Lcom/google/android/gms/internal/zzjp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqs:Lcom/google/android/gms/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Z)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "headline"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "call_to_action"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "advertiser"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getAdvertiser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logo"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->zzdO()Lcom/google/android/gms/internal/zzch;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzch;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzch;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_51

    :catch_67
    move-exception v0

    const-string v1, "Exception occurred when loading assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6d
    return-void

    :cond_6e
    :try_start_6e
    const-string v2, "images"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqt:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zze;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "assets"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "template_id"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$2;->zzqs:Lcom/google/android/gms/internal/zzjp;

    const-string v2, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzjp;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_9c} :catch_67

    goto :goto_6d
.end method

###### Class com.google.android.gms.ads.internal.zzm.AnonymousClass3 (com.google.android.gms.ads.internal.zzm$3)
.class final Lcom/google/android/gms/ads/internal/zzm$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzqu:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$3;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$3;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method

###### Class com.google.android.gms.ads.internal.zzm.AnonymousClass4 (com.google.android.gms.ads.internal.zzm$4)
.class final Lcom/google/android/gms/ads/internal/zzm$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzqu:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$4;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Adapter returned an ad, but assets substitution failed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$4;->zzqu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->destroy()V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzm.AnonymousClass5 (com.google.android.gms.ads.internal.zzm$5)
.class final Lcom/google/android/gms/ads/internal/zzm$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzqv:Lcom/google/android/gms/internal/zzfb;

.field final synthetic zzqw:Lcom/google/android/gms/ads/internal/zzf$zza;

.field final synthetic zzqx:Lcom/google/android/gms/internal/zzfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfb;Lcom/google/android/gms/ads/internal/zzf$zza;Lcom/google/android/gms/internal/zzfc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqv:Lcom/google/android/gms/internal/zzfb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqw:Lcom/google/android/gms/ads/internal/zzf$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqx:Lcom/google/android/gms/internal/zzfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqv:Lcom/google/android/gms/internal/zzfb;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqv:Lcom/google/android/gms/internal/zzfb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfb;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqv:Lcom/google/android/gms/internal/zzfb;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzfb;->zzc(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqw:Lcom/google/android/gms/ads/internal/zzf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzf$zza;->onClick()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_6

    :catch_22
    move-exception v0

    const-string v1, "Unable to call handleClick on mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_29
    :try_start_29
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzjp;)V

    goto :goto_6

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqx:Lcom/google/android/gms/internal/zzfc;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqx:Lcom/google/android/gms/internal/zzfc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfc;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqx:Lcom/google/android/gms/internal/zzfc;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzfc;->zzc(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$5;->zzqw:Lcom/google/android/gms/ads/internal/zzf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzf$zza;->onClick()V

    goto :goto_6

    :cond_48
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzjp;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_4b} :catch_22

    goto :goto_6
.end method
