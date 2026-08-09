###### Class com.google.android.gms.internal.zzby (com.google.android.gms.internal.zzby)
.class public abstract Lcom/google/android/gms/internal/zzby;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final zzxs:Lcom/google/android/gms/internal/zzby;
    .annotation runtime Lcom/google/android/gms/internal/zzhb;
    .end annotation
.end field

.field public static final zzxt:Lcom/google/android/gms/internal/zzby;
    .annotation runtime Lcom/google/android/gms/internal/zzhb;
    .end annotation
.end field

.field public static final zzxu:Lcom/google/android/gms/internal/zzby;
    .annotation runtime Lcom/google/android/gms/internal/zzhb;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzby$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzby$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzby;->zzxs:Lcom/google/android/gms/internal/zzby;

    new-instance v0, Lcom/google/android/gms/internal/zzby$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzby$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzby;->zzxt:Lcom/google/android/gms/internal/zzby;

    new-instance v0, Lcom/google/android/gms/internal/zzby$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzby$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzby;->zzxu:Lcom/google/android/gms/internal/zzby;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/zzby;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class com.google.android.gms.internal.zzby.AnonymousClass1 (com.google.android.gms.internal.zzby$1)
.class final Lcom/google/android/gms/internal/zzby$1;
.super Lcom/google/android/gms/internal/zzby;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzby;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-object p2
.end method

###### Class com.google.android.gms.internal.zzby.AnonymousClass2 (com.google.android.gms.internal.zzby$2)
.class final Lcom/google/android/gms/internal/zzby$2;
.super Lcom/google/android/gms/internal/zzby;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzby;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

###### Class com.google.android.gms.internal.zzby.AnonymousClass3 (com.google.android.gms.internal.zzby$3)
.class final Lcom/google/android/gms/internal/zzby$3;
.super Lcom/google/android/gms/internal/zzby;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzby;-><init>()V

    return-void
.end method

.method private zzM(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/16 v3, 0x2c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    :goto_1d
    if-lez v1, :cond_2a

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2a

    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_2a
    if-nez v0, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_8

    :cond_32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzby$3;->zzM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzby$3;->zzM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v0, v1

    goto :goto_e

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
