###### Class android.support.v7.app.ActionBar (android.support.v7.app.ActionBar)
.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBar$Callback;,
        Landroid/support/v7/app/ActionBar$LayoutParams;,
        Landroid/support/v7/app/ActionBar$TabListener;,
        Landroid/support/v7/app/ActionBar$Tab;,
        Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;,
        Landroid/support/v7/app/ActionBar$OnNavigationListener;,
        Landroid/support/v7/app/ActionBar$DisplayOptions;,
        Landroid/support/v7/app/ActionBar$NavigationMode;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    return-void
.end method


# virtual methods
.method public abstract addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
.end method

.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 1040
    return-void
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getElevation()F
    .registers 2

    .prologue
    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getHideOffset()I
    .registers 2

    .prologue
    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 847
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .registers 2

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    .prologue
    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public isTitleTruncated()Z
    .registers 2

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public abstract newTab()Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1036
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public openOptionsMenu()Z
    .registers 2

    .prologue
    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1028
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .prologue
    .line 1008
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_d

    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_d
    return-void
.end method

.method public setHideOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 993
    if-eqz p1, :cond_a

    .line 994
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_a
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 4
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 953
    if-eqz p1, :cond_a

    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_a
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 937
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 917
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 898
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 877
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 835
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1032
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 536
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 526
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1069
    return-void
.end method

.method public abstract show()V
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 1044
    const/4 v0, 0x0

    return-object v0
.end method

###### Class android.support.v7.app.ActionBar.Callback (android.support.v7.app.ActionBar$Callback)
.class interface abstract Landroid/support/v7/app/ActionBar$Callback;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.end method

###### Class android.support.v7.app.ActionBar.DisplayOptions (android.support.v7.app.ActionBar$DisplayOptions)
.class public interface abstract annotation Landroid/support/v7/app/ActionBar$DisplayOptions;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/IntDef;
    flag = true
    value = {
        0x1L,
        0x2L,
        0x4L,
        0x8L,
        0x10L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DisplayOptions"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.v7.app.ActionBar.LayoutParams (android.support.v7.app.ActionBar$LayoutParams)
.class public Landroid/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 1340
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1341
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1331
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1332
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1336
    iput p3, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1322
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1319
    iput v2, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1324
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1325
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1326
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1327
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/support/v7/app/ActionBar$LayoutParams;

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1346
    iget v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1347
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1351
    return-void
.end method

###### Class android.support.v7.app.ActionBar.NavigationMode (android.support.v7.app.ActionBar$NavigationMode)
.class public interface abstract annotation Landroid/support/v7/app/ActionBar$NavigationMode;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/IntDef;
    value = {
        0x0L,
        0x1L,
        0x2L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NavigationMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.v7.app.ActionBar.OnMenuVisibilityListener (android.support.v7.app.ActionBar$OnMenuVisibilityListener)
.class public interface abstract Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMenuVisibilityListener"
.end annotation


# virtual methods
.method public abstract onMenuVisibilityChanged(Z)V
.end method

###### Class android.support.v7.app.ActionBar.OnNavigationListener (android.support.v7.app.ActionBar$OnNavigationListener)
.class public interface abstract Landroid/support/v7/app/ActionBar$OnNavigationListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNavigationListener"
.end annotation


# virtual methods
.method public abstract onNavigationItemSelected(IJ)Z
.end method

###### Class android.support.v7.app.ActionBar.Tab (android.support.v7.app.ActionBar$Tab)
.class public abstract Landroid/support/v7/app/ActionBar$Tab;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract select()V
.end method

.method public abstract setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setText(I)Landroid/support/v7/app/ActionBar$Tab;
.end method

.method public abstract setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
.end method

###### Class android.support.v7.app.ActionBar.TabListener (android.support.v7.app.ActionBar$TabListener)
.class public interface abstract Landroid/support/v7/app/ActionBar$TabListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabListener"
.end annotation


# virtual methods
.method public abstract onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method

.method public abstract onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method

.method public abstract onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method
