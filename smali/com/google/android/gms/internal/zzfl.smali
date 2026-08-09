###### Class com.google.android.gms.internal.zzfl (com.google.android.gms.internal.zzfl)
.class public final Lcom/google/android/gms/internal/zzfl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfl$1;
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/ads/AdRequest$ErrorCode;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    :pswitch_f
    const/4 v0, 0x2

    goto :goto_c

    :pswitch_11
    const/4 v0, 0x3

    goto :goto_c

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Lcom/google/ads/AdSize;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/ads/AdSize;

    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    aput-object v3, v1, v2

    :goto_21
    array-length v2, v1

    if-ge v0, v2, :cond_3e

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    if-ne v2, v3, :cond_3b

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    if-ne v2, v3, :cond_3b

    aget-object v0, v1, v0

    :goto_3a
    return-object v0

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3e
    new-instance v0, Lcom/google/ads/AdSize;

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzuh:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_3a
.end method

.method public static zzj(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/ads/mediation/MediationAdRequest;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    if-eqz v0, :cond_22

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_b
    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfl;->zzu(I)Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_22
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public static zzu(I)Lcom/google/ads/AdRequest$Gender;
    .registers 2

    packed-switch p0, :pswitch_data_c

    sget-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.zzfl.AnonymousClass1 (com.google.android.gms.internal.zzfl$1)
.class synthetic Lcom/google/android/gms/internal/zzfl$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic zzCS:[I

.field static final synthetic zzCT:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/ads/AdRequest$ErrorCode;->values()[Lcom/google/ads/AdRequest$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCT:[I

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    :goto_35
    invoke-static {}, Lcom/google/ads/AdRequest$Gender;->values()[Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCS:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCS:[I

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCS:[I

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/gms/internal/zzfl$1;->zzCS:[I

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
