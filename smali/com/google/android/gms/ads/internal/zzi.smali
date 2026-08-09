###### Class com.google.android.gms.ads.internal.zzi (com.google.android.gms.ads.internal.zzi)
.class public Lcom/google/android/gms/ads/internal/zzi;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzpL:Lcom/google/android/gms/internal/zzcr;

.field private final zzpM:Lcom/google/android/gms/internal/zzcs;

.field private final zzpN:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpO:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzpQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

.field private final zzpS:Ljava/lang/String;

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzpU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpV:Ljava/lang/Object;

.field private final zzpm:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzpn:Lcom/google/android/gms/internal/zzex;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzcr;Lcom/google/android/gms/internal/zzcs;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzex;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzq;",
            "Lcom/google/android/gms/internal/zzcr;",
            "Lcom/google/android/gms/internal/zzcs;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzx;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpn:Lcom/google/android/gms/internal/zzex;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpO:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbl()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpQ:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    return-object v0
.end method

.method private zzbl()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    if-eqz v1, :cond_e

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpL:Lcom/google/android/gms/internal/zzcr;

    if-eqz v1, :cond_17

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_24

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpM:Lcom/google/android/gms/internal/zzcs;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpN:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpO:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzi;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpR:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzp;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    monitor-exit v2

    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_16

    :cond_1a
    monitor-exit v2

    move-object v0, v1

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public isLoading()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzp;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->isLoading()Z

    move-result v0

    :goto_16
    monitor-exit v2

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_16

    :cond_1a
    monitor-exit v2

    move v0, v1

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zzbm()Lcom/google/android/gms/ads/internal/zzp;
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpm:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzt(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpS:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpn:Lcom/google/android/gms/internal/zzex;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzi$1;-><init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzi.AnonymousClass1 (com.google.android.gms.ads.internal.zzi$1)
.class Lcom/google/android/gms/ads/internal/zzi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzi;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic zzpX:Lcom/google/android/gms/ads/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/ads/internal/zzi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzbm()Lcom/google/android/gms/ads/internal/zzp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzcr;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzc(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzcs;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzd(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zze(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzf(Lcom/google/android/gms/ads/internal/zzi;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzg(Lcom/google/android/gms/ads/internal/zzi;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpX:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzi(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/ads/internal/client/zzx;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi$1;->zzpW:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    monitor-exit v1

    return-void

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw v0
.end method
