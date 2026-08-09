###### Class com.google.android.gms.clearcut.zzb (com.google.android.gms.clearcut.zzb)
.class public final Lcom/google/android/gms/clearcut/zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/zzb$zza;,
        Lcom/google/android/gms/clearcut/zzb$zzc;,
        Lcom/google/android/gms/clearcut/zzb$zzb;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzUI:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzlw;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzUJ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzlw;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaeQ:Lcom/google/android/gms/clearcut/zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzTJ:Ljava/lang/String;

.field private final zzaeR:I

.field private zzaeS:Ljava/lang/String;

.field private zzaeT:I

.field private zzaeU:Ljava/lang/String;

.field private zzaeV:Ljava/lang/String;

.field private final zzaeW:Z

.field private zzaeX:I

.field private final zzaeY:Lcom/google/android/gms/clearcut/zzc;

.field private final zzaeZ:Lcom/google/android/gms/clearcut/zza;

.field private zzafa:Lcom/google/android/gms/clearcut/zzb$zzc;

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzb$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->zzUJ:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/zzb;->zzUJ:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/zzb;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzlv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlv;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->zzaeQ:Lcom/google/android/gms/clearcut/zzc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/internal/zzmq;Lcom/google/android/gms/clearcut/zzb$zzc;Lcom/google/android/gms/clearcut/zza;)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeT:I

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeX:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_42

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzTJ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/zzb;->zzai(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeR:I

    iput p2, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeT:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeU:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeV:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeW:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeY:Lcom/google/android/gms/clearcut/zzc;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/zzb;->zzqW:Lcom/google/android/gms/internal/zzmq;

    if-eqz p9, :cond_44

    :goto_2d
    iput-object p9, p0, Lcom/google/android/gms/clearcut/zzb;->zzafa:Lcom/google/android/gms/clearcut/zzb$zzc;

    iput-object p10, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeZ:Lcom/google/android/gms/clearcut/zza;

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeX:I

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeW:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeU:Ljava/lang/String;

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_3c
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_41
    return-void

    :cond_42
    move-object v0, p1

    goto :goto_f

    :cond_44
    new-instance p9, Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/zzb$zzc;-><init>()V

    goto :goto_2d

    :cond_4a
    move v0, v1

    goto :goto_3c
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/clearcut/zzb;->zzaeQ:Lcom/google/android/gms/clearcut/zzc;

    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zzsc()Lcom/google/android/gms/internal/zzmq;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gms/clearcut/zza;->zzaeP:Lcom/google/android/gms/clearcut/zza;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/clearcut/zzb;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/internal/zzmq;Lcom/google/android/gms/clearcut/zzb$zzc;Lcom/google/android/gms/clearcut/zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeT:I

    return v0
.end method

.method private zzai(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeS:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_10

    :cond_26
    move-object v0, v2

    goto :goto_3
.end method

.method static synthetic zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Ljava/util/ArrayList;)[I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeX:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/internal/zzmq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzqW:Lcom/google/android/gms/internal/zzmq;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeZ:Lcom/google/android/gms/clearcut/zza;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzafa:Lcom/google/android/gms/clearcut/zzb$zzc;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/clearcut/zzb;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeW:Z

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzTJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeR:I

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeY:Lcom/google/android/gms/clearcut/zzc;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaeY:Lcom/google/android/gms/clearcut/zzc;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public zzi([B)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V

    return-object v0
.end method

###### Class com.google.android.gms.clearcut.zzb.AnonymousClass1 (com.google.android.gms.clearcut.zzb$1)
.class final Lcom/google/android/gms/clearcut/zzb$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/internal/zzlw;",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/clearcut/zzb$1;->zze(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzlw;

    move-result-object v0

    return-object v0
.end method

.method public zze(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzlw;
    .registers 13

    new-instance v0, Lcom/google/android/gms/internal/zzlw;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

###### Class com.google.android.gms.clearcut.zzb.zza (com.google.android.gms.clearcut.zzb$zza)
.class public Lcom/google/android/gms/clearcut/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private zzaeS:Ljava/lang/String;

.field private zzaeT:I

.field private zzaeU:Ljava/lang/String;

.field private zzaeV:Ljava/lang/String;

.field private zzaeX:I

.field private final zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private zzafc:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private zzafd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

.field private zzaff:Z

.field final synthetic zzafg:Lcom/google/android/gms/clearcut/zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzb;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeT:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zze(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafd:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/zza;->zzah(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/zzb$zzc;->zzC(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    if-eqz p2, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    :cond_85
    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

    return-void
.end method


# virtual methods
.method public zzbq(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    return-object p0
.end method

.method public zzbr(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    return-object p0
.end method

.method public zzd(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzoE()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzoE()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .registers 11

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zzb;->zzl(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeT:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeS:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zzb;->zzj(Lcom/google/android/gms/clearcut/zzb;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeX:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafc:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzsz$zzd;Lcom/google/android/gms/clearcut/zzb$zzb;Lcom/google/android/gms/clearcut/zzb$zzb;[I)V

    return-object v9
.end method

###### Class com.google.android.gms.clearcut.zzb.InterfaceC0025zzb (com.google.android.gms.clearcut.zzb$zzb)
.class public interface abstract Lcom/google/android/gms/clearcut/zzb$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzb"
.end annotation


# virtual methods
.method public abstract zzoF()[B
.end method

###### Class com.google.android.gms.clearcut.zzb.zzc (com.google.android.gms.clearcut.zzb$zzc)
.class public Lcom/google/android/gms/clearcut/zzb$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzC(J)J
    .registers 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method
