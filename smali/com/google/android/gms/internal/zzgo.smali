###### Class com.google.android.gms.internal.zzgo (com.google.android.gms.internal.zzgo)
.class public Lcom/google/android/gms/internal/zzgo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgo$zza;
    }
.end annotation


# instance fields
.field private final zzGj:Landroid/os/Handler;

.field private final zzGk:J

.field private zzGl:J

.field private zzGm:Lcom/google/android/gms/internal/zzjq$zza;

.field protected zzGn:Z

.field protected zzGo:Z

.field private final zzoG:I

.field private final zzoH:I

.field protected final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;II)V
    .registers 15

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x32

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzgo;-><init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzjq$zza;Lcom/google/android/gms/internal/zzjp;IIJJ)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGo:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzgo;->zzoH:I

    iput p3, p0, Lcom/google/android/gms/internal/zzgo;->zzoG:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgo;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgo;->zzoG:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgo;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgo;->zzoH:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgo;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgo;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGl:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzjq$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzgo;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzgo;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgo;->zzgg()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGm:Lcom/google/android/gms/internal/zzjq$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq$zza;->zza(Lcom/google/android/gms/internal/zzjp;Z)V

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzgo$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjp;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzgo$zza;-><init>(Lcom/google/android/gms/internal/zzgo;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgo$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIa:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzjp;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzjy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzjy;)V
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzjp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v1, v5

    :goto_11
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzir;->zzaC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public zzge()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGj:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzgo;->zzGk:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized zzgf()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzgg()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzgh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgo;->zzGo:Z

    return v0
.end method

###### Class com.google.android.gms.internal.zzgo.zza (com.google.android.gms.internal.zzgo$zza)
.class public final Lcom/google/android/gms/internal/zzgo$zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzGp:Landroid/webkit/WebView;

.field private zzGq:Landroid/graphics/Bitmap;

.field final synthetic zzGr:Lcom/google/android/gms/internal/zzgo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgo;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgo$zza;->zza([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgo$zza;->zza(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected declared-synchronized onPreExecute()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/internal/zzgo;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgo;->zzb(Lcom/google/android/gms/internal/zzgo;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGq:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/internal/zzgo;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgo;->zzb(Lcom/google/android/gms/internal/zzgo;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->measure(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/internal/zzgo;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzgo;->zzb(Lcom/google/android/gms/internal/zzgo;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGq:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGp:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    monitor-exit p0

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs declared-synchronized zza([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eqz v4, :cond_12

    if-nez v5, :cond_19

    :cond_12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_4a

    move-result-object v0

    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    move v3, v1

    move v0, v1

    :goto_1b
    if-ge v3, v4, :cond_31

    move v2, v1

    :goto_1e
    if-ge v2, v5, :cond_2d

    :try_start_20
    iget-object v6, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGq:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_2a

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    add-int/lit8 v2, v2, 0xa

    goto :goto_1e

    :cond_2d
    add-int/lit8 v2, v3, 0xa

    move v3, v2

    goto :goto_1b

    :cond_31
    int-to-double v2, v0

    mul-int v0, v4, v5

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_48

    const/4 v0, 0x1

    :goto_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_4a

    move-result-object v0

    goto :goto_17

    :cond_48
    move v0, v1

    goto :goto_43

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected zza(Ljava/lang/Boolean;)V
    .registers 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zzc(Lcom/google/android/gms/internal/zzgo;)J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgo;->zzgg()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zzd(Lcom/google/android/gms/internal/zzgo;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_36

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzgo;->zzGo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zze(Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzjq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgo;->zzpD:Lcom/google/android/gms/internal/zzjp;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjq$zza;->zza(Lcom/google/android/gms/internal/zzjp;Z)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zzd(Lcom/google/android/gms/internal/zzgo;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzQ(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "Ad not detected, scheduling another run."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgo;->zzg(Lcom/google/android/gms/internal/zzgo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzGr:Lcom/google/android/gms/internal/zzgo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgo;->zzf(Lcom/google/android/gms/internal/zzgo;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35
.end method
