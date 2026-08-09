###### Class com.google.android.gms.ads.formats.NativeAdOptions (com.google.android.gms.ads.formats.NativeAdOptions)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$1;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_ANY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# instance fields
.field private final zzoN:Z

.field private final zzoO:I

.field private final zzoP:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoN:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoO:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoP:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/ads/formats/NativeAdOptions$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getImageOrientation()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoO:I

    return v0
.end method

.method public shouldRequestMultipleImages()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoP:Z

    return v0
.end method

.method public shouldReturnUrlsForImageAssets()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzoN:Z

    return v0
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.AnonymousClass1 (com.google.android.gms.ads.formats.NativeAdOptions$1)
.class synthetic Lcom/google/android/gms/ads/formats/NativeAdOptions$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.formats.NativeAdOptions.Builder (com.google.android.gms.ads.formats.NativeAdOptions$Builder)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzoN:Z

.field private zzoO:I

.field private zzoP:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoN:Z

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoO:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoP:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoN:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoO:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoP:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V

    return-object v0
.end method

.method public setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoO:I

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "shouldRequestMultipleImages"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoP:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "shouldReturnUrls"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzoN:Z

    return-object p0
.end method
