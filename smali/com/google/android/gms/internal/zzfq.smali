###### Class com.google.android.gms.internal.zzfq (com.google.android.gms.internal.zzfq)
.class public Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfq$1;,
        Lcom/google/android/gms/internal/zzfq$zza;
    }
.end annotation


# instance fields
.field private final zzDu:Z

.field private final zzDv:Z

.field private final zzDw:Z

.field private final zzDx:Z

.field private final zzDy:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfq$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zza(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDu:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzb(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDv:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzc(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDw:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zzd(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDx:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq$zza;->zze(Lcom/google/android/gms/internal/zzfq$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzDy:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfq$zza;Lcom/google/android/gms/internal/zzfq$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfq;-><init>(Lcom/google/android/gms/internal/zzfq$zza;)V

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDu:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDv:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDx:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfq;->zzDy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v0

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2d
.end method

###### Class com.google.android.gms.internal.zzfq.AnonymousClass1 (com.google.android.gms.internal.zzfq$1)
.class synthetic Lcom/google/android/gms/internal/zzfq$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzfq.zza (com.google.android.gms.internal.zzfq$zza)
.class public final Lcom/google/android/gms/internal/zzfq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzDu:Z

.field private zzDv:Z

.field private zzDw:Z

.field private zzDx:Z

.field private zzDy:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfq$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDu:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfq$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDv:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzfq$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDw:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzfq$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDx:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzfq$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDy:Z

    return v0
.end method


# virtual methods
.method public zzeP()Lcom/google/android/gms/internal/zzfq;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzfq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfq;-><init>(Lcom/google/android/gms/internal/zzfq$zza;Lcom/google/android/gms/internal/zzfq$1;)V

    return-object v0
.end method

.method public zzq(Z)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDu:Z

    return-object p0
.end method

.method public zzr(Z)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDv:Z

    return-object p0
.end method

.method public zzs(Z)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDw:Z

    return-object p0
.end method

.method public zzt(Z)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDx:Z

    return-object p0
.end method

.method public zzu(Z)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzDy:Z

    return-object p0
.end method
