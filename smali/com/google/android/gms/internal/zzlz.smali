###### Class com.google.android.gms.internal.zzlz (com.google.android.gms.internal.zzlz)
.class public abstract Lcom/google/android/gms/internal/zzlz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlz$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static zzaiV:Lcom/google/android/gms/internal/zzlz$zza;

.field private static zzaiW:I

.field private static zzaiX:Ljava/lang/String;

.field private static final zzqy:Ljava/lang/Object;


# instance fields
.field private zzSC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final zzvs:Ljava/lang/String;

.field protected final zzvt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlz;->zzqy:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzlz;->zzaiV:Lcom/google/android/gms/internal/zzlz$zza;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/zzlz;->zzaiW:I

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/internal/zzlz;->zzaiX:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzSC:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlz;->zzvs:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlz;->zzvt:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzlz;->zzaiV:Lcom/google/android/gms/internal/zzlz$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzlz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlz$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlz$4;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlz$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlz$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzlz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlz$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlz$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzk(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzlz;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlz$1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzlz$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzpW()I
    .registers 1

    sget v0, Lcom/google/android/gms/internal/zzlz;->zzaiW:I

    return v0
.end method

.method static synthetic zzpY()Lcom/google/android/gms/internal/zzlz$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzlz;->zzaiV:Lcom/google/android/gms/internal/zzlz$zza;

    return-object v0
.end method

.method public static zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlz$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlz$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzSC:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzSC:Ljava/lang/Object;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzvs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlz;->zzct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method protected abstract zzct(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzpX()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlz;->get()Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

###### Class com.google.android.gms.internal.zzlz.AnonymousClass1 (com.google.android.gms.internal.zzlz$1)
.class final Lcom/google/android/gms/internal/zzlz$1;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zzk(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$1;->zzcu(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected zzcu(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$1;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$1;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlz.AnonymousClass2 (com.google.android.gms.internal.zzlz$2)
.class final Lcom/google/android/gms/internal/zzlz$2;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$2;->zzcv(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected zzcv(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$2;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$2;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlz.AnonymousClass3 (com.google.android.gms.internal.zzlz$3)
.class final Lcom/google/android/gms/internal/zzlz$3;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$3;->zzcw(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected zzcw(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$3;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$3;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->zzb(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlz.AnonymousClass4 (com.google.android.gms.internal.zzlz$4)
.class final Lcom/google/android/gms/internal/zzlz$4;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$4;->zzcx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected zzcx(Ljava/lang/String;)Ljava/lang/Float;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$4;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$4;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->zzb(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlz.AnonymousClass5 (com.google.android.gms.internal.zzlz$5)
.class final Lcom/google/android/gms/internal/zzlz$5;
.super Lcom/google/android/gms/internal/zzlz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlz",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlz;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$5;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzcy(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzlz;->zzpY()Lcom/google/android/gms/internal/zzlz$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz$5;->zzvs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$5;->zzvt:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlz$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlz.zza (com.google.android.gms.internal.zzlz$zza)
.class interface abstract Lcom/google/android/gms/internal/zzlz$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "zza"
.end annotation


# virtual methods
.method public abstract getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
.end method
