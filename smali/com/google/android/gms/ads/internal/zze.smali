###### Class com.google.android.gms.ads.internal.zze (com.google.android.gms.ads.internal.zze)
.class public Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zze$zzb;,
        Lcom/google/android/gms/ads/internal/zze$zza;
    }
.end annotation


# instance fields
.field private zzpA:Z

.field private zzpB:Z

.field private zzpz:Lcom/google/android/gms/ads/internal/zze$zza;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzvI:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    return-void
.end method


# virtual methods
.method public recordClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpA:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/zze$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    return-void
.end method

.method public zzbh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpA:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzq(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Action was blocked because no click was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zze$zza;->zzr(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

###### Class com.google.android.gms.ads.internal.zze.zza (com.google.android.gms.ads.internal.zze$zza)
.class public interface abstract Lcom/google/android/gms/ads/internal/zze$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract zzr(Ljava/lang/String;)V
.end method

###### Class com.google.android.gms.ads.internal.zze.zzb (com.google.android.gms.ads.internal.zze$zzb)
.class public Lcom/google/android/gms/ads/internal/zze$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zze$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzpC:Lcom/google/android/gms/internal/zzif$zza;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-void
.end method


# virtual methods
.method public zzr(Ljava/lang/String;)V
    .registers 6

    const-string v0, "An auto-clicking creative is blocked"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "//pagead2.googlesyndication.com/pagead/gen_204"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "id"

    const-string v2, "gmob-apps-blocked-navigation"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "navigationURL"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "debugDialog"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzjp;->zzhX()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzir;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
