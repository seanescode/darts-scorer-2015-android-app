###### Class com.google.android.gms.ads.internal.formats.zzh (com.google.android.gms.ads.internal.formats.zzh)
.class public interface abstract Lcom/google/android/gms/ads/internal/formats/zzh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/formats/zzh$zza;
    }
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract recordImpression()V
.end method

.method public abstract zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end method

.method public abstract zzb(Landroid/view/MotionEvent;)V
.end method

.method public abstract zzdS()Landroid/view/View;
.end method

.method public abstract zzh(Landroid/view/View;)V
.end method

.method public abstract zzi(Landroid/view/View;)V
.end method

###### Class com.google.android.gms.ads.internal.formats.zzh.zza (com.google.android.gms.ads.internal.formats.zzh$zza)
.class public interface abstract Lcom/google/android/gms/ads/internal/formats/zzh$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/formats/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract getCustomTemplateId()Ljava/lang/String;
.end method

.method public abstract zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
.end method

.method public abstract zzdM()Ljava/lang/String;
.end method

.method public abstract zzdN()Lcom/google/android/gms/ads/internal/formats/zza;
.end method
