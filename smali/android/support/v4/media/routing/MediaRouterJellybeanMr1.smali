###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1 (android.support.v4.media.routing.MediaRouterJellybeanMr1)
.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.super Landroid/support/v4/media/routing/MediaRouterJellybean;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$RouteInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouterJellybeanMr1"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/media/routing/MediaRouterJellybean;-><init>()V

    .line 164
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;

    .prologue
    .line 34
    new-instance v0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1.ActiveScanWorkaround (android.support.v4.media.routing.MediaRouterJellybeanMr1$ActiveScanWorkaround)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveScanWorkaround"
.end annotation


# static fields
.field private static final WIFI_DISPLAY_SCAN_INTERVAL:I = 0x3a98


# instance fields
.field private mActivelyScanningWifiDisplays:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_f

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 72
    :cond_f
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 73
    iput-object p2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    .line 75
    :try_start_1b
    const-class v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "scanWifiDisplays"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_28} :catch_29

    .line 78
    :goto_28
    return-void

    .line 76
    :catch_29
    move-exception v0

    goto :goto_28
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 108
    iget-boolean v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-eqz v1, :cond_15

    .line 110
    :try_start_4
    iget-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_e} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_e} :catch_1f

    .line 116
    :goto_e
    iget-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_15
    return-void

    .line 111
    :catch_16
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "MediaRouterJellybeanMr1"

    const-string v2, "Cannot scan for wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 113
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1f
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "MediaRouterJellybeanMr1"

    const-string v2, "Cannot scan for wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setActiveScanRouteTypes(I)V
    .registers 4
    .param p1, "routeTypes"    # I

    .prologue
    .line 87
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1d

    .line 88
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_14

    .line 89
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    .line 91
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_14
    :goto_14
    return-void

    .line 93
    :cond_15
    const-string v0, "MediaRouterJellybeanMr1"

    const-string v1, "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 99
    :cond_1d
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-eqz v0, :cond_14

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    .line 101
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1.Callback (android.support.v4.media.routing.MediaRouterJellybeanMr1$Callback)
.class public interface abstract Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"

# interfaces
.implements Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRoutePresentationDisplayChanged(Ljava/lang/Object;)V
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1.CallbackProxy (android.support.v4.media.routing.MediaRouterJellybeanMr1$CallbackProxy)
.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;
.super Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;",
        ">",
        "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 173
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    check-cast v0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;->onRoutePresentationDisplayChanged(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1.IsConnectingWorkaround (android.support.v4.media.routing.MediaRouterJellybeanMr1$IsConnectingWorkaround)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsConnectingWorkaround"
.end annotation


# instance fields
.field private mGetStatusCodeMethod:Ljava/lang/reflect/Method;

.field private mStatusConnecting:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_f

    .line 131
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 135
    :cond_f
    :try_start_f
    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const-string v2, "STATUS_CONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 137
    .local v0, "statusConnectingField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I

    .line 138
    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const-string v2, "getStatusCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_2b} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_2b} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_2b} :catch_2c

    .line 144
    .end local v0    # "statusConnectingField":Ljava/lang/reflect/Field;
    :goto_2b
    return-void

    .line 142
    :catch_2c
    move-exception v1

    goto :goto_2b

    .line 141
    :catch_2e
    move-exception v1

    goto :goto_2b

    .line 140
    :catch_30
    move-exception v1

    goto :goto_2b
.end method


# virtual methods
.method public isConnecting(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 150
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_20

    .line 152
    :try_start_8
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    .local v1, "statusCode":I
    iget v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_19} :catch_1f

    if-ne v1, v2, :cond_1d

    const/4 v2, 0x1

    .line 160
    .end local v1    # "statusCode":I
    :goto_1c
    return v2

    .restart local v1    # "statusCode":I
    :cond_1d
    move v2, v3

    .line 153
    goto :goto_1c

    .line 155
    .end local v1    # "statusCode":I
    :catch_1f
    move-exception v2

    :cond_20
    :goto_20
    move v2, v3

    .line 160
    goto :goto_1c

    .line 154
    :catch_22
    move-exception v2

    goto :goto_20
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr1.RouteInfo (android.support.v4.media.routing.MediaRouterJellybeanMr1$RouteInfo)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method
