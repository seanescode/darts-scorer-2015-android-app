###### Class com.google.android.gms.internal.zzhf (com.google.android.gms.internal.zzhf)
.class public final Lcom/google/android/gms/internal/zzhf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzEY:Ljava/lang/String;

.field private zzJh:Ljava/lang/String;

.field private zzJi:Lcom/google/android/gms/internal/zzjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzjd",
            "<",
            "Lcom/google/android/gms/internal/zzhi;",
            ">;"
        }
    .end annotation
.end field

.field zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

.field public final zzJk:Lcom/google/android/gms/internal/zzdf;

.field public final zzJl:Lcom/google/android/gms/internal/zzdf;

.field zzpD:Lcom/google/android/gms/internal/zzjp;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpV:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    new-instance v0, Lcom/google/android/gms/internal/zzhf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhf$1;-><init>(Lcom/google/android/gms/internal/zzhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJk:Lcom/google/android/gms/internal/zzdf;

    new-instance v0, Lcom/google/android/gms/internal/zzhf$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhf$2;-><init>(Lcom/google/android/gms/internal/zzhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJl:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhf;->zzJh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJh:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzeg$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

    return-void
.end method

.method public zzgB()Lcom/google/android/gms/internal/zzeg$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

    return-object v0
.end method

.method public zzgC()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzhi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    return-object v0
.end method

.method public zzgD()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    :cond_c
    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzjp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-void
.end method

###### Class com.google.android.gms.internal.zzhf.AnonymousClass1 (com.google.android.gms.internal.zzhf$1)
.class Lcom/google/android/gms/internal/zzhf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJm:Lcom/google/android/gms/internal/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf$1;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 7
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$1;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$1;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjd;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$1;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "request_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    monitor-exit v1

    goto :goto_14

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    new-instance v0, Lcom/google/android/gms/internal/zzhi;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/zzhi;-><init>(ILjava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhi;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhi;->zzgE()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhf$1;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_29

    goto :goto_14
.end method

###### Class com.google.android.gms.internal.zzhf.AnonymousClass2 (com.google.android.gms.internal.zzhf$2)
.class Lcom/google/android/gms/internal/zzhf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJm:Lcom/google/android/gms/internal/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 9
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjd;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/zzhi;

    const/4 v0, -0x2

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzhi;-><init>(ILjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ==== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhf;->zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_14

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :try_start_54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhi;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_61

    const-string v0, "URL missing in loadAdUrl GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_14

    :cond_61
    const-string v0, "%40mediation_adapters%40"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "check_adapters"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzhf;->zzd(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzil;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "%40mediation_adapters%40"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzhi;->setUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad request URL modified to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    :cond_9e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf$2;->zzJm:Lcom/google/android/gms/internal/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhf;->zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_54 .. :try_end_a8} :catchall_51

    goto/16 :goto_14
.end method
