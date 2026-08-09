###### Class com.google.android.gms.internal.zziw (com.google.android.gms.internal.zziw)
.class public Lcom/google/android/gms/internal/zziw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zziw$zzc;,
        Lcom/google/android/gms/internal/zziw$zzb;,
        Lcom/google/android/gms/internal/zziw$zza;
    }
.end annotation


# static fields
.field private static zzMy:Lcom/google/android/gms/internal/zzl;

.field public static final zzMz:Lcom/google/android/gms/internal/zziw$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zziw$zza",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzqy:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zziw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMz:Lcom/google/android/gms/internal/zziw$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zziw;->zzS(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    return-void
.end method

.method private static zzS(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzqy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzac;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;)Lcom/google/android/gms/internal/zzjg;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zziw$zza",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zziw$zzc;-><init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziw$1;)V

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    new-instance v2, Lcom/google/android/gms/internal/zziw$zzb;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/zziw$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;Lcom/google/android/gms/internal/zzm$zzb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzjg;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zziw$zzc;-><init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziw$1;)V

    new-instance v4, Lcom/google/android/gms/internal/zziw$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/internal/zziw$2;-><init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zzc;)V

    new-instance v0, Lcom/google/android/gms/internal/zziw$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zziw$3;-><init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v3
.end method

###### Class com.google.android.gms.internal.zziw.AnonymousClass1 (com.google.android.gms.internal.zziw$1)
.class final Lcom/google/android/gms/internal/zziw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzgp()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziw$1;->zzhB()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zziw$1;->zzi(Ljava/io/InputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzhB()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzi(Ljava/io/InputStream;)Ljava/lang/Void;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zziw.AnonymousClass2 (com.google.android.gms.internal.zziw$2)
.class Lcom/google/android/gms/internal/zziw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziw;->zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMA:Lcom/google/android/gms/internal/zziw$zzc;

.field final synthetic zzMB:Lcom/google/android/gms/internal/zziw;

.field final synthetic zzzP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zzc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$2;->zzMB:Lcom/google/android/gms/internal/zziw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw$2;->zzzP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziw$2;->zzMA:Lcom/google/android/gms/internal/zziw$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzr;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw$2;->zzzP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$2;->zzMA:Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziw$zzc;->zzb(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zziw.AnonymousClass3 (com.google.android.gms.internal.zziw$3)
.class Lcom/google/android/gms/internal/zziw$3;
.super Lcom/google/android/gms/internal/zzab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziw;->zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMB:Lcom/google/android/gms/internal/zziw;

.field final synthetic zzMC:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$3;->zzMB:Lcom/google/android/gms/internal/zziw;

    iput-object p5, p0, Lcom/google/android/gms/internal/zziw$3;->zzMC:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzab;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$3;->zzMC:Ljava/util/Map;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzab;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$3;->zzMC:Ljava/util/Map;

    goto :goto_8
.end method

###### Class com.google.android.gms.internal.zziw.zza (com.google.android.gms.internal.zziw$zza)
.class public interface abstract Lcom/google/android/gms/internal/zziw$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zzgp()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.zziw.zzb (com.google.android.gms.internal.zziw$zzb)
.class Lcom/google/android/gms/internal/zziw$zzb;
.super Lcom/google/android/gms/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzk",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzMD:Lcom/google/android/gms/internal/zziw$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zziw$zza",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzaG:Lcom/google/android/gms/internal/zzm$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;Lcom/google/android/gms/internal/zzm$zzb;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zziw$zza",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zziw$zzb$1;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/internal/zziw$zzb$1;-><init>(Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zziw$zza;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zza;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw$zzb;->zzMD:Lcom/google/android/gms/internal/zziw$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziw$zzb;->zzaG:Lcom/google/android/gms/internal/zzm$zzb;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzi;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzi;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzx;->zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zziw$zzb;->zzj(Ljava/io/InputStream;)V

    return-void
.end method

.method protected zzj(Ljava/io/InputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$zzb;->zzaG:Lcom/google/android/gms/internal/zzm$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw$zzb;->zzMD:Lcom/google/android/gms/internal/zziw$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zziw$zza;->zzh(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zziw.zzb.AnonymousClass1 (com.google.android.gms.internal.zziw$zzb$1)
.class Lcom/google/android/gms/internal/zziw$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziw$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;Lcom/google/android/gms/internal/zzm$zzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzME:Lcom/google/android/gms/internal/zzm$zzb;

.field final synthetic zzMF:Lcom/google/android/gms/internal/zziw$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zziw$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$zzb$1;->zzME:Lcom/google/android/gms/internal/zzm$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw$zzb$1;->zzMF:Lcom/google/android/gms/internal/zziw$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzr;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw$zzb$1;->zzME:Lcom/google/android/gms/internal/zzm$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw$zzb$1;->zzMF:Lcom/google/android/gms/internal/zziw$zza;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziw$zza;->zzgp()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zziw.zzc (com.google.android.gms.internal.zziw$zzc)
.class Lcom/google/android/gms/internal/zziw$zzc;
.super Lcom/google/android/gms/internal/zzjd;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzjd",
        "<TT;>;",
        "Lcom/google/android/gms/internal/zzm$zzb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzMB:Lcom/google/android/gms/internal/zziw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zziw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$zzc;->zzMB:Lcom/google/android/gms/internal/zziw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziw$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zziw$zzc;-><init>(Lcom/google/android/gms/internal/zziw;)V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzjd;->zzg(Ljava/lang/Object;)V

    return-void
.end method
