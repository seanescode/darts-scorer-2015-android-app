###### Class com.google.android.gms.internal.zzro (com.google.android.gms.internal.zzro)
.class public final Lcom/google/android/gms/internal/zzro;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzro$1;,
        Lcom/google/android/gms/internal/zzro$zza;
    }
.end annotation


# static fields
.field public static final zzbgV:Lcom/google/android/gms/internal/zzro;


# instance fields
.field private final zzXa:Z

.field private final zzXc:Z

.field private final zzXd:Ljava/lang/String;

.field private final zzXe:Ljava/lang/String;

.field private final zzbgW:Z

.field private final zzbgX:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzro$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzro$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro$zza;->zzFJ()Lcom/google/android/gms/internal/zzro;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzro;->zzbgV:Lcom/google/android/gms/internal/zzro;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzro;->zzbgW:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzro;->zzXa:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzro;->zzXd:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzro;->zzXc:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzro;->zzbgX:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzro;->zzXe:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzro$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzro;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public zzFH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzro;->zzbgW:Z

    return v0
.end method

.method public zzFI()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzro;->zzbgX:Z

    return v0
.end method

.method public zzmO()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzro;->zzXa:Z

    return v0
.end method

.method public zzmQ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzro;->zzXc:Z

    return v0
.end method

.method public zzmR()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzXd:Ljava/lang/String;

    return-object v0
.end method

.method public zzmS()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzXe:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzro.AnonymousClass1 (com.google.android.gms.internal.zzro$1)
.class synthetic Lcom/google/android/gms/internal/zzro$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzro.zza (com.google.android.gms.internal.zzro$zza)
.class public final Lcom/google/android/gms/internal/zzro$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzbdY:Ljava/lang/String;

.field private zzbgY:Z

.field private zzbgZ:Z

.field private zzbha:Z

.field private zzbhb:Ljava/lang/String;

.field private zzbhc:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzFJ()Lcom/google/android/gms/internal/zzro;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/zzro;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbgY:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbgZ:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbdY:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbha:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbhb:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbhc:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzro;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzro$1;)V

    return-object v0
.end method
