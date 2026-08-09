###### Class com.google.android.gms.common.internal.zzj (com.google.android.gms.common.internal.zzj)
.class public abstract Lcom/google/android/gms/common/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zzb;
.implements Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzj$zzd;,
        Lcom/google/android/gms/common/internal/zzj$zza;,
        Lcom/google/android/gms/common/internal/zzj$zzg;,
        Lcom/google/android/gms/common/internal/zzj$zzh;,
        Lcom/google/android/gms/common/internal/zzj$zzf;,
        Lcom/google/android/gms/common/internal/zzj$zzc;,
        Lcom/google/android/gms/common/internal/zzj$zzb;,
        Lcom/google/android/gms/common/internal/zzj$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "Lcom/google/android/gms/common/internal/zzk$zza;"
    }
.end annotation


# static fields
.field public static final zzalJ:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final zzTI:Landroid/accounts/Account;

.field private final zzXf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzagr:Landroid/os/Looper;

.field private final zzags:Lcom/google/android/gms/common/zzc;

.field private final zzahz:Lcom/google/android/gms/common/internal/zzf;

.field private zzalA:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

.field private zzalB:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzalC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zzj",
            "<TT;>.zzc<*>;>;"
        }
    .end annotation
.end field

.field private zzalD:Lcom/google/android/gms/common/internal/zzj$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzj",
            "<TT;>.zze;"
        }
    .end annotation
.end field

.field private zzalE:I

.field private final zzalF:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzalG:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private final zzalH:I

.field protected zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzals:I

.field private zzalt:J

.field private zzalu:J

.field private zzalv:I

.field private zzalw:J

.field private final zzalx:Lcom/google/android/gms/common/internal/zzl;

.field private final zzaly:Ljava/lang/Object;

.field private zzalz:Lcom/google/android/gms/common/internal/zzs;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/zzj;->zzalJ:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzl;->zzau(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzoK()Lcom/google/android/gms/common/zzc;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzaly:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalA:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzagr:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzl;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalx:Lcom/google/android/gms/common/internal/zzl;

    const-string v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/zzc;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zzj$zzb;-><init>(Lcom/google/android/gms/common/internal/zzj;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/zzj;->zzalH:I

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzTI:Landroid/accounts/Account;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/zzf;->zzqt()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzXf:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzj;->zzalF:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzj;->zzalG:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzaly:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zzb(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v0, v1

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    move-object v0, v1

    goto :goto_7
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;IILandroid/os/IInterface;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzj;->zza(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalA:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    return-object v0
.end method

.method private zzb(ILandroid/os/IInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1d

    move v3, v0

    :goto_6
    if-eqz p2, :cond_1f

    move v2, v0

    :goto_9
    if-ne v3, v2, :cond_21

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iput p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalB:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zzc(ILandroid/os/IInterface;)V

    packed-switch p1, :pswitch_data_32

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    move v3, v1

    goto :goto_6

    :cond_1f
    move v2, v1

    goto :goto_9

    :cond_21
    move v0, v1

    goto :goto_b

    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqE()V

    goto :goto_1b

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    throw v0

    :pswitch_2a
    :try_start_2a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/zzj;->zza(Landroid/os/IInterface;)V

    goto :goto_1b

    :pswitch_2e
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqF()V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    goto :goto_1b

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_23
        :pswitch_2a
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalF:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzXf:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalG:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-object v0
.end method

.method private zzqE()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    if-eqz v0, :cond_34

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgu()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_34
    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zze;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzj$zze;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgu()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zza(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzm(II)V

    :cond_7a
    return-void
.end method

.method private zzqF()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgu()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalD:Lcom/google/android/gms/common/internal/zzj$zze;

    :cond_16
    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqO()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzaly:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj;, "Lcom/google/android/gms/common/internal/zzj<TT;>;"
    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalB:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_144

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1b
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_117

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalu:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_67

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastConnectedTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalu:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalu:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_67
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalt:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_b1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzals:I

    packed-switch v1, :pswitch_data_150

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzals:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_84
    const-string v1, " lastSuspendedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalt:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b1
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalw:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_f7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastFailedStatus="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalv:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, " lastFailedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalw:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalw:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f7
    return-void

    :catchall_f8
    move-exception v0

    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v0

    :pswitch_fb
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_102
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_109
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_110
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_117
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzgv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_136
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_84

    :pswitch_13d
    const-string v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_84

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_110
        :pswitch_fb
        :pswitch_102
        :pswitch_109
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_136
        :pswitch_13d
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzagr:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj;, "Lcom/google/android/gms/common/internal/zzj<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalv:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalw:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4
    .param p1, "cause"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj;, "Lcom/google/android/gms/common/internal/zzj<TT;>;"
    iput p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzals:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalt:J

    return-void
.end method

.method protected abstract zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 10
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zzj$zzg;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzj$zzg;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(Landroid/os/IInterface;)V
    .registers 4
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalu:J

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalA:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzml()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalH:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzcG(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v0

    if-eqz p2, :cond_1e

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzmE()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqq()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb(Lcom/google/android/gms/common/internal/zzp;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzaly:Ljava/lang/Object;

    monitor-enter v1
    :try_end_32
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_32} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_6c

    :try_start_32
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    new-instance v3, Lcom/google/android/gms/common/internal/zzj$zzd;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/zzj$zzd;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzs;->zza(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_69

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqK()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzTI:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_53
    .catch Landroid/os/DeadObjectException; {:try_start_48 .. :try_end_53} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_53} :catch_6c

    goto :goto_2f

    :catch_54
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzj;->zzbS(I)V

    goto :goto_47

    :cond_61
    :try_start_61
    const-string v0, "GmsClient"

    const-string v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catch Landroid/os/DeadObjectException; {:try_start_6b .. :try_end_6c} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method protected zzb(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public zzbS(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzc(ILandroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract zzgu()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract zzgv()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected zzm(II)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zzj$zzh;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzh;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzmE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zzml()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public zznb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zznc()Landroid/content/Intent;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzoT()Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzaly:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalz:Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzoi()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final zzqD()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzqw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzqG()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzags:Lcom/google/android/gms/common/zzc;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzalA:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_28
    return-void

    :cond_29
    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    goto :goto_28
.end method

.method protected final zzqH()Lcom/google/android/gms/common/internal/zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    return-object v0
.end method

.method protected final zzqI()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public final zzqJ()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalE:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzqI()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalB:Landroid/os/IInterface;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_19
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzalB:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_e

    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public zzqK()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzqq()Landroid/accounts/Account;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzTI:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzTI:Landroid/accounts/Account;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

###### Class com.google.android.gms.common.internal.zzj.zza (com.google.android.gms.common.internal.zzj$zza)
.class abstract Lcom/google/android/gms/common/internal/zzj$zza;
.super Lcom/google/android/gms/common/internal/zzj$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>.zzc<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final statusCode:I

.field public final zzalK:Landroid/os/Bundle;

.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzj$zzc;-><init>(Lcom/google/android/gms/common/internal/zzj;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalK:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected zzc(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    sparse-switch v1, :sswitch_data_50

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalK:Landroid/os/Bundle;

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalK:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_22
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zza;->zzqL()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_43
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_2d
        0xa -> :sswitch_43
    .end sparse-switch
.end method

.method protected abstract zzj(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected abstract zzqL()Z
.end method

.method protected zzqM()V
    .registers 1

    return-void
.end method

.method protected synthetic zzw(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzc(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.google.android.gms.common.internal.zzj.zzb (com.google.android.gms.common.internal.zzj$zzb)
.class final Lcom/google/android/gms/common/internal/zzj$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private zza(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqM()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj$zzc;->unregister()V

    return-void
.end method

.method private zzb(Landroid/os/Message;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_f

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj$zzb;, "Lcom/google/android/gms/common/internal/zzj<TT;>.zzb;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->zzalI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_19

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_22

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    goto :goto_18

    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_18

    :cond_49
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzc(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzc(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;IILandroid/os/IInterface;)Z

    goto :goto_18

    :cond_72
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_83

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    goto :goto_18

    :cond_83
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqN()V

    goto :goto_18

    :cond_91
    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18
.end method

###### Class com.google.android.gms.common.internal.zzj.zzc (com.google.android.gms.common.internal.zzj$zzc)
.class public abstract Lcom/google/android/gms/common/internal/zzj$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;

.field private zzalM:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->mListener:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalM:Z

    return-void
.end method


# virtual methods
.method public unregister()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqO()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected abstract zzqM()V
.end method

.method public zzqN()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->mListener:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalM:Z

    if-eqz v1, :cond_25

    const-string v1, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    if-eqz v0, :cond_3c

    :try_start_28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzw(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_37

    :goto_2b
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->zzalM:Z

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->unregister()V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catch_37
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqM()V

    throw v0

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzqM()V

    goto :goto_2b

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public zzqO()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzc;->mListener:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected abstract zzw(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

###### Class com.google.android.gms.common.internal.zzj.zzd (com.google.android.gms.common.internal.zzj$zzd)
.class public final Lcom/google/android/gms/common/internal/zzj$zzd;
.super Lcom/google/android/gms/common/internal/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzalN:Lcom/google/android/gms/common/internal/zzj;

.field private final zzalO:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/internal/zzj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzr$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalN:Lcom/google/android/gms/common/internal/zzj;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalO:I

    return-void
.end method

.method private zzqP()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalN:Lcom/google/android/gms/common/internal/zzj;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalN:Lcom/google/android/gms/common/internal/zzj;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalN:Lcom/google/android/gms/common/internal/zzj;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzalO:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj$zzd;->zzqP()V

    return-void
.end method

.method public zzb(ILandroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const-string v0, "GmsClient"

    const-string v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

###### Class com.google.android.gms.common.internal.zzj.zze (com.google.android.gms.common.internal.zzj$zze)
.class public final Lcom/google/android/gms/common/internal/zzj$zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;

.field private final zzalO:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalO:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj$zze;, "Lcom/google/android/gms/common/internal/zzj<TT;>.zze;"
    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzs$zza;->zzaS(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalO:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zzm(II)V

    return-void

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj$zze;, "Lcom/google/android/gms/common/internal/zzj<TT;>.zze;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzalO:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

###### Class com.google.android.gms.common.internal.zzj.zzf (com.google.android.gms.common.internal.zzj$zzf)
.class public Lcom/google/android/gms/common/internal/zzj$zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zzf"
.end annotation


# instance fields
.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzj;->zze(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzf(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzf(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_12
.end method

###### Class com.google.android.gms.common.internal.zzj.zzg (com.google.android.gms.common.internal.zzj$zzg)
.class public final Lcom/google/android/gms/common/internal/zzj$zzg;
.super Lcom/google/android/gms/common/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>.zza;"
    }
.end annotation


# instance fields
.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;

.field public final zzalP:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/zzj$zza;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalP:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzf(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzf(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected zzqL()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalP:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_3c

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzj;->zzgv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "GmsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzj;->zzgv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return v0

    :catch_3c
    move-exception v1

    const-string v1, "GmsClient"

    const-string v2, "service probably died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalP:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zzW(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->zzoi()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzj;->zzc(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzg;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzj;->zzc(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :cond_70
    const/4 v0, 0x1

    goto :goto_3b
.end method

###### Class com.google.android.gms.common.internal.zzj.zzh (com.google.android.gms.common.internal.zzj$zzh)
.class public final Lcom/google/android/gms/common/internal/zzj$zzh;
.super Lcom/google/android/gms/common/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>.zza;"
    }
.end annotation


# instance fields
.field final synthetic zzalL:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzh;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/zzj$zza;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzh;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzh;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected zzqL()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzh;->zzalL:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzafB:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
