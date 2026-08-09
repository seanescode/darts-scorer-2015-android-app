###### Class com.google.android.gms.common.api.internal.zzq (com.google.android.gms.common.api.internal.zzq)
.class public final Lcom/google/android/gms/common/api/internal/zzq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zzq$zza;,
        Lcom/google/android/gms/common/api/internal/zzq$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final zzaiw:Lcom/google/android/gms/common/api/internal/zzq$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzq",
            "<T",
            "L;",
            ">.zza;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzq$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zzq$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzaiw:Lcom/google/android/gms/common/api/internal/zzq$zza;

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zzq$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzq$zzb",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzaiw:Lcom/google/android/gms/common/api/internal/zzq$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zzq$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzaiw:Lcom/google/android/gms/common/api/internal/zzq$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzq$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/common/api/internal/zzq$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzq$zzb",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->mListener:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zzq$zzb;->zzpr()V

    :goto_7
    return-void

    :cond_8
    :try_start_8
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzq$zzb;->zzt(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_7

    :catch_c
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zzq$zzb;->zzpr()V

    throw v0
.end method

###### Class com.google.android.gms.common.api.internal.zzq.zza (com.google.android.gms.common.api.internal.zzq$zza)
.class final Lcom/google/android/gms/common/api/internal/zzq$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaix:Lcom/google/android/gms/common/api/internal/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzq;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzq$zza;->zzaix:Lcom/google/android/gms/common/api/internal/zzq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/internal/zzq$zza;, "Lcom/google/android/gms/common/api/internal/zzq<TL;>.zza;"
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_12

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq$zza;->zzaix:Lcom/google/android/gms/common/api/internal/zzq;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzq$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzq;->zzb(Lcom/google/android/gms/common/api/internal/zzq$zzb;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

###### Class com.google.android.gms.common.api.internal.zzq.zzb (com.google.android.gms.common.api.internal.zzq$zzb)
.class public interface abstract Lcom/google/android/gms/common/api/internal/zzq$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zzpr()V
.end method

.method public abstract zzt(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method
