###### Class com.google.android.gms.ads.MobileAds (com.google.android.gms.ads.MobileAds)
.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzad;->zzdi()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzad;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzad;->zzdi()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzad;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationCode"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationCode"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/google/android/gms/ads/MobileAds$Settings;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzad;->zzdi()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v1

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzad;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzae;)V

    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaG()Lcom/google/android/gms/ads/internal/client/zzae;

    move-result-object v0

    goto :goto_7
.end method

.method public static setAppVolume(F)V
    .registers 2
    .param p0, "volume"    # F

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzad;->zzdi()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzad;->setAppVolume(F)V

    return-void
.end method

###### Class com.google.android.gms.ads.MobileAds.Settings (com.google.android.gms.ads.MobileAds$Settings)
.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field private final zzoM:Lcom/google/android/gms/ads/internal/client/zzae;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    return-void
.end method


# virtual methods
.method public getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->isGoogleAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzm(Z)V

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzJ(Ljava/lang/String;)V

    return-object p0
.end method

.method zzaG()Lcom/google/android/gms/ads/internal/client/zzae;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzoM:Lcom/google/android/gms/ads/internal/client/zzae;

    return-object v0
.end method
