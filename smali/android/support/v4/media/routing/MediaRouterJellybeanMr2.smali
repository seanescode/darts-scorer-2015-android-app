###### Class android.support.v4.media.routing.MediaRouterJellybeanMr2 (android.support.v4.media.routing.MediaRouterJellybeanMr2)
.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr2;
.super Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$UserRouteInfo;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$RouteInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;-><init>()V

    .line 39
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 4
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "types"    # I
    .param p2, "callbackObj"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 25
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/MediaRouter$Callback;

    .end local p2    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 27
    return-void
.end method

.method public static getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "routerObj"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr2.RouteInfo (android.support.v4.media.routing.MediaRouterJellybeanMr2$RouteInfo)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isConnecting(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybeanMr2.UserRouteInfo (android.support.v4.media.routing.MediaRouterJellybeanMr2$UserRouteInfo)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
