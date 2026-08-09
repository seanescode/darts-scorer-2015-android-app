###### Class com.google.android.gms.internal.zzlv (com.google.android.gms.internal.zzlv)
.class public Lcom/google/android/gms/internal/zzlv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlv$zze;,
        Lcom/google/android/gms/internal/zzlv$zzd;,
        Lcom/google/android/gms/internal/zzlv$zzb;,
        Lcom/google/android/gms/internal/zzlv$zza;,
        Lcom/google/android/gms/internal/zzlv$zzc;
    }
.end annotation


# static fields
.field private static final zzafn:Ljava/lang/Object;

.field private static final zzafo:Lcom/google/android/gms/internal/zzlv$zze;

.field private static final zzafp:J


# instance fields
.field private zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzafq:Lcom/google/android/gms/internal/zzlv$zza;

.field private final zzafr:Ljava/lang/Object;

.field private zzafs:J

.field private final zzaft:J

.field private zzafu:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzafv:Ljava/lang/Runnable;

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlv;->zzafn:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlv$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlv$zze;-><init>(Lcom/google/android/gms/internal/zzlv$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzlv;->zzafp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmt;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zzlv;->zzafp:J

    new-instance v1, Lcom/google/android/gms/internal/zzlv$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzlv$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzlv;-><init>(Lcom/google/android/gms/internal/zzmq;JLcom/google/android/gms/internal/zzlv$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzmq;JLcom/google/android/gms/internal/zzlv$zza;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafr:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafs:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzafu:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzlv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlv$1;-><init>(Lcom/google/android/gms/internal/zzlv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafv:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzqW:Lcom/google/android/gms/internal/zzmq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzlv;->zzaft:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlv;->zzafq:Lcom/google/android/gms/internal/zzlv$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlv;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafr:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    array-length v0, v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzoF()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    array-length v0, v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzoF()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlv;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafs:J

    return-wide v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzlv$zzd;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlv$zze;->zzoH()V

    new-instance v0, Lcom/google/android/gms/internal/zzlv$zzd;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzlv$zzd;-><init>(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zzlv$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlv$2;-><init>(Lcom/google/android/gms/internal/zzlv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlv$zzd;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/internal/zzmq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzqW:Lcom/google/android/gms/internal/zzmq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic zzoG()Lcom/google/android/gms/internal/zzlv$zze;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlv;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzlv$zzd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/zzlv$zze;->zza(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "flush interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_6
.end method

###### Class com.google.android.gms.internal.zzlv.AnonymousClass1 (com.google.android.gms.internal.zzlv$1)
.class Lcom/google/android/gms/internal/zzlv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafw:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zzb(Lcom/google/android/gms/internal/zzlv;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zzc(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zzd(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v2, "disconnect managed GoogleApiClient"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zzd(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzafw:Lcom/google/android/gms/internal/zzlv;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_39
    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0
.end method

###### Class com.google.android.gms.internal.zzlv.AnonymousClass2 (com.google.android.gms.internal.zzlv$2)
.class Lcom/google/android/gms/internal/zzlv$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlv;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzlv$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafw:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$2;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzu(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzlv;->zzoG()Lcom/google/android/gms/internal/zzlv$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlv$zze;->zzoI()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlv.zza (com.google.android.gms.internal.zzlv$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzlv$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

###### Class com.google.android.gms.internal.zzlv.zzb (com.google.android.gms.internal.zzlv$zzb)
.class public Lcom/google/android/gms/internal/zzlv$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlv.zzc (com.google.android.gms.internal.zzlv$zzc)
.class abstract Lcom/google/android/gms/internal/zzlv$zzc;
.super Lcom/google/android/gms/common/api/internal/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zza$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzlw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/clearcut/zzb;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/zza$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlv.zzd (com.google.android.gms.internal.zzlv$zzd)
.class final Lcom/google/android/gms/internal/zzlv$zzd;
.super Lcom/google/android/gms/internal/zzlv$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlv$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzafw:Lcom/google/android/gms/internal/zzlv;

.field private final zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafw:Lcom/google/android/gms/internal/zzlv;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzlv$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/internal/zzlv$zzd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p1    # "rhs":Ljava/lang/Object;
    :goto_5
    return v0

    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzlv$zzd;

    .end local p1    # "rhs":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzlw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlv$zzd;->zza(Lcom/google/android/gms/internal/zzlw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzlw;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlv$zzd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlv$zzd$1;-><init>(Lcom/google/android/gms/internal/zzlv$zzd;)V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlv;->zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzlw;->zza(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageNanoProducer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlv$zzd;->zzafx:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v3, v3, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlv$zzd;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlv.zzd.AnonymousClass1 (com.google.android.gms.internal.zzlv$zzd$1)
.class Lcom/google/android/gms/internal/zzlv$zzd$1;
.super Lcom/google/android/gms/internal/zzlx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlv$zzd;->zza(Lcom/google/android/gms/internal/zzlw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafy:Lcom/google/android/gms/internal/zzlv$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$zzd$1;->zzafy:Lcom/google/android/gms/internal/zzlv$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzv(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$zzd$1;->zzafy:Lcom/google/android/gms/internal/zzlv$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlv$zzd;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlv.zze (com.google.android.gms.internal.zzlv$zze)
.class final Lcom/google/android/gms/internal/zzlv$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zze"
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlv$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlv$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    monitor-enter p0

    :goto_b
    :try_start_b
    iget v4, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    if-nez v4, :cond_12

    const/4 v0, 0x1

    monitor-exit p0

    :goto_11
    return v0

    :cond_12
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1e

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_11

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    goto :goto_b
.end method

.method public declared-synchronized zzoH()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzoI()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too many decrements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    iget v0, p0, Lcom/google/android/gms/internal/zzlv$zze;->mSize:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    :cond_1d
    monitor-exit p0

    return-void
.end method
