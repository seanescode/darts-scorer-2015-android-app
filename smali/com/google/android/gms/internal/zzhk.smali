###### Class com.google.android.gms.internal.zzhk (com.google.android.gms.internal.zzhk)
.class public final Lcom/google/android/gms/internal/zzhk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhk$zza;
    }
.end annotation


# instance fields
.field private zzKm:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzhk$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzKm:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public zzE(Landroid/content/Context;)Lcom/google/android/gms/internal/zzhj;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhk;->zzKm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhk$zza;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhk$zza;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/google/android/gms/internal/zzbt;->zzwL:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Lcom/google/android/gms/internal/zzhj$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhk$zza;->zzKo:Lcom/google/android/gms/internal/zzhj;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzhj$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhj$zza;->zzgI()Lcom/google/android/gms/internal/zzhj;

    move-result-object v0

    :goto_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhk;->zzKm:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/zzhk$zza;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzhk$zza;-><init>(Lcom/google/android/gms/internal/zzhk;Lcom/google/android/gms/internal/zzhj;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/zzhj$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhj$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhj$zza;->zzgI()Lcom/google/android/gms/internal/zzhj;

    move-result-object v0

    goto :goto_29
.end method

###### Class com.google.android.gms.internal.zzhk.zza (com.google.android.gms.internal.zzhk$zza)
.class Lcom/google/android/gms/internal/zzhk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzKn:J

.field public final zzKo:Lcom/google/android/gms/internal/zzhj;

.field final synthetic zzKp:Lcom/google/android/gms/internal/zzhk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhk;Lcom/google/android/gms/internal/zzhj;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKp:Lcom/google/android/gms/internal/zzhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKn:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKo:Lcom/google/android/gms/internal/zzhj;

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .registers 5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKn:J

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwM:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
