###### Class com.google.android.gms.internal.zzgb (com.google.android.gms.internal.zzgb)
.class public Lcom/google/android/gms/internal/zzgb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final zzFr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzFr:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Fetching assets for the given html"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzgb$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/zzgb$1;-><init>(Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzfR()Landroid/webkit/WebView;
    .registers 4

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzgb.AnonymousClass1 (com.google.android.gms.internal.zzgb$1)
.class Lcom/google/android/gms/internal/zzgb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzFs:Ljava/lang/String;

.field final synthetic zzFt:Ljava/lang/String;

.field final synthetic zzFu:Lcom/google/android/gms/internal/zzgb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFu:Lcom/google/android/gms/internal/zzgb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFu:Lcom/google/android/gms/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->zzfR()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgb$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzgb$1$1;-><init>(Lcom/google/android/gms/internal/zzgb$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFu:Lcom/google/android/gms/internal/zzgb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgb;->zzFr:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgb$1;->zzFt:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Fetching assets finished."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzgb.AnonymousClass1.C00671 (com.google.android.gms.internal.zzgb$1$1)
.class Lcom/google/android/gms/internal/zzgb$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgb$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzFv:Lcom/google/android/gms/internal/zzgb$1;

.field final synthetic zztj:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgb$1;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zzFv:Lcom/google/android/gms/internal/zzgb$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zztj:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zzFv:Lcom/google/android/gms/internal/zzgb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb$1;->zzFu:Lcom/google/android/gms/internal/zzgb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzFr:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zztj:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const-string v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zzFv:Lcom/google/android/gms/internal/zzgb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb$1;->zzFu:Lcom/google/android/gms/internal/zzgb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzFr:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgb$1$1;->zztj:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
