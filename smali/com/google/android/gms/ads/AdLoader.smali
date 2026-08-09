###### Class com.google.android.gms.ads.AdLoader (com.google.android.gms.ads.AdLoader)
.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

.field private final zzoC:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adLoader"    # Lcom/google/android/gms/ads/internal/client/zzr;

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcO()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzh;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzh;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adLoader"    # Lcom/google/android/gms/ads/internal/client/zzr;
    .param p3, "parcelFactory"    # Lcom/google/android/gms/ads/internal/client/zzh;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzoC:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/zzaa;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzoC:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->zzoB:Lcom/google/android/gms/ads/internal/client/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzaa;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzoC:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzoC:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->isLoading()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3
    .param p1, "adRequest"    # Lcom/google/android/gms/ads/AdRequest;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzaE()Lcom/google/android/gms/ads/internal/client/zzaa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/ads/internal/client/zzaa;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3
    .param p1, "publisherAdRequest"    # Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzaE()Lcom/google/android/gms/ads/internal/client/zzaa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/ads/internal/client/zzaa;)V

    return-void
.end method

###### Class com.google.android.gms.ads.AdLoader.Builder (com.google.android.gms.ads.AdLoader$Builder)
.class public Lcom/google/android/gms/ads/AdLoader$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzoD:Lcom/google/android/gms/ads/internal/client/zzs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzs;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/google/android/gms/ads/internal/client/zzs;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adUnitID"    # Ljava/lang/String;

    .prologue
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzew;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzew;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/ads/internal/client/zzd;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzs;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/AdLoader;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzs;->zzbn()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/internal/zzcw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcw;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/internal/zzcr;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string v1, "Failed to add app install ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/internal/zzcx;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcx;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/internal/zzcs;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string v1, "Failed to add content ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 7
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "adLoadedListener"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    .param p3, "customClickListener"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v2, Lcom/google/android/gms/internal/zzcz;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzcz;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V

    if-nez p3, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzct;)V

    :goto_d
    return-object p0

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzcy;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_a

    :catch_14
    move-exception v0

    const-string v1, "Failed to add custom template ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/ads/AdListener;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string v1, "Failed to set AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public withCorrelator(Lcom/google/android/gms/ads/Correlator;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .param p1, "correlator"    # Lcom/google/android/gms/ads/Correlator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/Correlator;->zzaF()Lcom/google/android/gms/ads/internal/client/zzo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zzb(Lcom/google/android/gms/ads/internal/client/zzx;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-object p0

    :catch_d
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .param p1, "options"    # Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzoD:Lcom/google/android/gms/ads/internal/client/zzs;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    const-string v1, "Failed to specify native ad options"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
