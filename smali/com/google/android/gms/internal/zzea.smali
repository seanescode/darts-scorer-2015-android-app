###### Class com.google.android.gms.internal.zzea (com.google.android.gms.internal.zzea)
.class Lcom/google/android/gms/internal/zzea;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzea$zza;
    }
.end annotation


# instance fields
.field private final zzAB:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzea$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAC:I

.field private final zzpS:Ljava/lang/String;

.field private zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzea;->zzAC:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzea;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzea;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzea;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzea;->zzAC:I

    return v0
.end method

.method size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzdv;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzea$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzea$zza;-><init>(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/internal/zzdv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea$zza;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    return-void
.end method

.method zzei()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method zzej()Lcom/google/android/gms/internal/zzea$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzea$zza;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzea.zza (com.google.android.gms.internal.zzea$zza)
.class Lcom/google/android/gms/internal/zzea$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzAD:Lcom/google/android/gms/ads/internal/zzk;

.field zzAE:Lcom/google/android/gms/internal/zzdw;

.field zzAF:J

.field zzAG:Z

.field zzAH:Z

.field final synthetic zzAI:Lcom/google/android/gms/internal/zzea;

.field zzAb:Landroid/content/MutableContextWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/internal/zzdv;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAI:Lcom/google/android/gms/internal/zzea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdv;->zzec()Lcom/google/android/gms/internal/zzdv;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdv;->zzed()Landroid/content/MutableContextWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAb:Landroid/content/MutableContextWrapper;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdv;->zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    new-instance v0, Lcom/google/android/gms/internal/zzdw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAE:Lcom/google/android/gms/internal/zzdw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAE:Lcom/google/android/gms/internal/zzdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdw;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    return-void
.end method

.method private zzek()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAG:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAI:Lcom/google/android/gms/internal/zzea;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzea;->zzc(Lcom/google/android/gms/internal/zzea;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAD:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAI:Lcom/google/android/gms/internal/zzea;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzea;->zzc(Lcom/google/android/gms/internal/zzea;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAG:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAF:J

    :cond_27
    return-void
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzdv;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdv;->zzed()Landroid/content/MutableContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAb:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAI:Lcom/google/android/gms/internal/zzea;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzea$zza;->zzek()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea$zza;->zzAI:Lcom/google/android/gms/internal/zzea;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzea;->zzb(Lcom/google/android/gms/internal/zzea;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzea$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzea$zza;->zzek()V

    goto :goto_14

    :cond_24
    return-void
.end method
