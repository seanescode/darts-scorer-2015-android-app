###### Class android.support.v4.media.routing.MediaRouterJellybean (android.support.v4.media.routing.MediaRouterJellybean)
.class Landroid/support/v4/media/routing/MediaRouterJellybean;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$RouteCategory;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$UserRouteInfo;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$RouteGroup;,
        Landroid/support/v4/media/routing/MediaRouterJellybean$RouteInfo;
    }
.end annotation


# static fields
.field public static final ALL_ROUTE_TYPES:I = 0x800003

.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouterJellybean"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "types"    # I
    .param p2, "callbackObj"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/MediaRouter$Callback;

    .end local p2    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 79
    return-void
.end method

.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p1    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 99
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    .prologue
    .line 107
    new-instance v0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V

    return-object v0
.end method

.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isGroupable"    # Z

    .prologue
    .line 88
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "categoryObj"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    .end local p1    # "categoryObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createVolumeCallback(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    .prologue
    .line 111
    new-instance v0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)V

    return-object v0
.end method

.method public static getCategories(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p0, "routerObj"    # Ljava/lang/Object;

    .prologue
    .line 58
    move-object v3, p0

    check-cast v3, Landroid/media/MediaRouter;

    .line 59
    .local v3, "router":Landroid/media/MediaRouter;
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getCategoryCount()I

    move-result v0

    .line 60
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v2, "out":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 62
    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 64
    :cond_19
    return-object v2
.end method

.method public static getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p0, "routerObj"    # Ljava/lang/Object;

    .prologue
    .line 47
    move-object v3, p0

    check-cast v3, Landroid/media/MediaRouter;

    .line 48
    .local v3, "router":Landroid/media/MediaRouter;
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 49
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v2, "out":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 51
    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 53
    :cond_19
    return-object v2
.end method

.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 68
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$Callback;

    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 84
    return-void
.end method

.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p1    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 104
    return-void
.end method

.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "types"    # I
    .param p2, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    .end local p2    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 74
    return-void
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.Callback (android.support.v4.media.routing.MediaRouterJellybean$Callback)
.class public interface abstract Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRouteAdded(Ljava/lang/Object;)V
.end method

.method public abstract onRouteChanged(Ljava/lang/Object;)V
.end method

.method public abstract onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V
.end method

.method public abstract onRouteRemoved(Ljava/lang/Object;)V
.end method

.method public abstract onRouteSelected(ILjava/lang/Object;)V
.end method

.method public abstract onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onRouteUnselected(ILjava/lang/Object;)V
.end method

.method public abstract onRouteVolumeChanged(Ljava/lang/Object;)V
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.CallbackProxy (android.support.v4.media.routing.MediaRouterJellybean$CallbackProxy)
.class Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;
.super Landroid/media/MediaRouter$Callback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;",
        ">",
        "Landroid/media/MediaRouter$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;, "TT;"
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    .line 369
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 386
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteAdded(Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 398
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteChanged(Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 6
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p4, "index"    # I

    .prologue
    .line 405
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2, p3, p4}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 406
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 392
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteRemoved(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 374
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteSelected(ILjava/lang/Object;)V

    .line 375
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .prologue
    .line 412
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 380
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteUnselected(ILjava/lang/Object;)V

    .line 381
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 418
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;->onRouteVolumeChanged(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.GetDefaultRouteWorkaround (android.support.v4.media.routing.MediaRouterJellybean$GetDefaultRouteWorkaround)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDefaultRouteWorkaround"
.end annotation


# instance fields
.field private mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_15

    .line 337
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 340
    :cond_15
    :try_start_15
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "getSystemAudioRoute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_22} :catch_23

    .line 344
    :goto_22
    return-void

    .line 342
    :catch_23
    move-exception v0

    goto :goto_22
.end method


# virtual methods
.method public getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "routerObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 347
    move-object v0, p1

    check-cast v0, Landroid/media/MediaRouter;

    .line 349
    .local v0, "router":Landroid/media/MediaRouter;
    iget-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    .line 351
    :try_start_8
    iget-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_12

    move-result-object v1

    .line 359
    :goto_11
    return-object v1

    .line 353
    :catch_12
    move-exception v1

    .line 359
    :cond_13
    :goto_13
    invoke-virtual {v0, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    goto :goto_11

    .line 352
    :catch_18
    move-exception v1

    goto :goto_13
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.RouteCategory (android.support.v4.media.routing.MediaRouterJellybean$RouteCategory)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "categoryObj"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0    # "categoryObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .param p0, "categoryObj"    # Ljava/lang/Object;

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "out":Ljava/util/ArrayList;
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0    # "categoryObj":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;

    .line 247
    return-object v0
.end method

.method public static getSupportedTypes(Ljava/lang/Object;)I
    .registers 2
    .param p0, "categoryObj"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0    # "categoryObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->getSupportedTypes()I

    move-result v0

    return v0
.end method

.method public static isGroupable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "categoryObj"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0    # "categoryObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.RouteGroup (android.support.v4.media.routing.MediaRouterJellybean$RouteGroup)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteGroup;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteGroup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupedRoutes(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p0, "groupObj"    # Ljava/lang/Object;

    .prologue
    .line 183
    move-object v1, p0

    check-cast v1, Landroid/media/MediaRouter$RouteGroup;

    .line 185
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    .line 186
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v3, "out":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_19

    .line 188
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 190
    :cond_19
    return-object v3
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.RouteInfo (android.support.v4.media.routing.MediaRouterJellybean$RouteInfo)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackStream(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedTypes(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    return v0
.end method

.method public static getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVolume(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public static getVolumeHandling(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public static getVolumeMax(Ljava/lang/Object;)I
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public static isGroup(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 176
    instance-of v0, p0, Landroid/media/MediaRouter$RouteGroup;

    return v0
.end method

.method public static requestSetVolume(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    .line 164
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 165
    return-void
.end method

.method public static requestUpdateVolume(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I

    .prologue
    .line 168
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 169
    return-void
.end method

.method public static setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.SelectRouteWorkaround (android.support.v4.media.routing.MediaRouterJellybean$SelectRouteWorkaround)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectRouteWorkaround"
.end annotation


# instance fields
.field private mSelectRouteIntMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_15

    .line 284
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 287
    :cond_15
    :try_start_15
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "selectRouteInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 291
    :goto_2c
    return-void

    .line 289
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method


# virtual methods
.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 12
    .param p1, "routerObj"    # Ljava/lang/Object;
    .param p2, "types"    # I
    .param p3, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 294
    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter;

    .local v3, "router":Landroid/media/MediaRouter;
    move-object v1, p3

    .line 295
    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 298
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    .line 299
    .local v2, "routeTypes":I
    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-nez v4, :cond_2e

    .line 305
    iget-object v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3b

    .line 307
    :try_start_13
    iget-object v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_25} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_25} :catch_32

    .line 325
    :goto_25
    return-void

    .line 309
    :catch_26
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_2e
    :goto_2e
    invoke-virtual {v3, p2, v1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_25

    .line 312
    :catch_32
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 317
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_3b
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.UserRouteInfo (android.support.v4.media.routing.MediaRouterJellybean$UserRouteInfo)
.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIconDrawable(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .prologue
    .line 212
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 213
    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 208
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 209
    return-void
.end method

.method public static setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 235
    return-void
.end method

.method public static setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    .line 216
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 217
    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    .end local p1    # "volumeCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 230
    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeHandling"    # I

    .prologue
    .line 224
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 225
    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeMax"    # I

    .prologue
    .line 220
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 221
    return-void
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.VolumeCallback (android.support.v4.media.routing.MediaRouterJellybean$VolumeCallback)
.class public interface abstract Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeCallback"
.end annotation


# virtual methods
.method public abstract onVolumeSetRequest(Ljava/lang/Object;I)V
.end method

.method public abstract onVolumeUpdateRequest(Ljava/lang/Object;I)V
.end method

###### Class android.support.v4.media.routing.MediaRouterJellybean.VolumeCallbackProxy (android.support.v4.media.routing.MediaRouterJellybean$VolumeCallbackProxy)
.class Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;, "TT;"
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 427
    iput-object p1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    .line 428
    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .prologue
    .line 433
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;->onVolumeSetRequest(Ljava/lang/Object;I)V

    .line 434
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "direction"    # I

    .prologue
    .line 439
    .local p0, "this":Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;, "Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    .line 440
    return-void
.end method
