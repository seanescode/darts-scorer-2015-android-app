###### Class com.google.android.gms.ads.search.SearchAdRequest (com.google.android.gms.ads.search.SearchAdRequest)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$1;,
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final zzOA:I

.field private final zzOB:I

.field private final zzOC:I

.field private final zzOD:I

.field private final zzOE:Ljava/lang/String;

.field private final zzOF:I

.field private final zzOG:Ljava/lang/String;

.field private final zzOH:I

.field private final zzOI:I

.field private final zzOJ:Ljava/lang/String;

.field private final zzOx:I

.field private final zzOy:I

.field private final zzOz:I

.field private final zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

.field private final zzxO:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzaa;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOx:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzxO:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOy:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOz:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOA:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOB:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOC:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOD:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOE:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOF:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOG:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOH:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOI:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOJ:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaa;-><init>(Lcom/google/android/gms/ads/internal/client/zzaa$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/ads/search/SearchAdRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAnchorTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOx:I

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzxO:I

    return v0
.end method

.method public getBackgroundGradientBottom()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOy:I

    return v0
.end method

.method public getBackgroundGradientTop()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOz:I

    return v0
.end method

.method public getBorderColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOA:I

    return v0
.end method

.method public getBorderThickness()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOB:I

    return v0
.end method

.method public getBorderType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOC:I

    return v0
.end method

.method public getCallButtonColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOD:I

    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOE:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOF:I

    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOG:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOH:I

    return v0
.end method

.method public getHeaderTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOI:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaa;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "networkExtrasClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzOJ:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method zzaE()Lcom/google/android/gms/ads/internal/client/zzaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzoE:Lcom/google/android/gms/ads/internal/client/zzaa;

    return-object v0
.end method

###### Class com.google.android.gms.ads.search.SearchAdRequest.AnonymousClass1 (com.google.android.gms.ads.search.SearchAdRequest$1)
.class synthetic Lcom/google/android/gms/ads/search/SearchAdRequest$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.search.SearchAdRequest.Builder (com.google.android.gms.ads.search.SearchAdRequest$Builder)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzOA:I

.field private zzOB:I

.field private zzOC:I

.field private zzOD:I

.field private zzOE:Ljava/lang/String;

.field private zzOF:I

.field private zzOG:Ljava/lang/String;

.field private zzOH:I

.field private zzOI:I

.field private zzOJ:Ljava/lang/String;

.field private zzOx:I

.field private zzOy:I

.field private zzOz:I

.field private final zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

.field private zzxO:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOC:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOx:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzxO:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOy:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOz:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOA:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOB:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOC:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOD:I

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOF:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOH:I

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOI:I

    return v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzaa$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .param p2, "customEventExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .param p1, "networkExtras"    # Lcom/google/android/gms/ads/mediation/NetworkExtras;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .param p2, "networkExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/MediationAdapter;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzB(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V

    return-object v0
.end method

.method public setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "anchorTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOx:I

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v1, 0x0

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzxO:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOy:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOz:I

    return-object p0
.end method

.method public setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzxO:I

    iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOy:I

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOz:I

    return-object p0
.end method

.method public setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "borderColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOA:I

    return-object p0
.end method

.method public setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "borderThickness"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOB:I

    return-object p0
.end method

.method public setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "borderType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOC:I

    return-object p0
.end method

.method public setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "callButtonColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOD:I

    return-object p0
.end method

.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "channelIds"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOE:Ljava/lang/String;

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "descriptionTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOF:I

    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "fontFace"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOG:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "headerTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOH:I

    return-object p0
.end method

.method public setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "headerTextSize"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOI:I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzOJ:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .param p1, "requestAgent"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzF(Ljava/lang/String;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzk(Z)V

    return-object p0
.end method
