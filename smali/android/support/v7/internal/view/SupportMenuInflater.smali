###### Class android.support.v7.internal.view.SupportMenuInflater (android.support.v7.internal.view.SupportMenuInflater)
.class public Landroid/support/v7/internal/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;,
        Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 74
    sget-object v0, Landroid/support/v7/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/internal/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/SupportMenuInflater;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/internal/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/SupportMenuInflater;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/view/SupportMenuInflater;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/SupportMenuInflater;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/internal/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/SupportMenuInflater;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 220
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 226
    .end local p1    # "owner":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-object p1

    .line 223
    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_4

    .line 224
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "owner":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4
.end method

.method private getRealOwner()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 214
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 216
    :cond_c
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/internal/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 136
    .local v2, "menuState":Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 138
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 139
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .line 143
    .local v6, "unknownTagName":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x2

    if-ne v0, v7, :cond_42

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 156
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1e
    const/4 v3, 0x0

    .line 157
    .local v3, "reachedEndOfMenu":Z
    :goto_1f
    if-nez v3, :cond_d1

    .line 158
    packed-switch v0, :pswitch_data_d2

    .line 208
    :cond_24
    :goto_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1f

    .line 151
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_29
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 154
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    goto :goto_1e

    .line 160
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_4a
    if-nez v1, :cond_24

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 166
    invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_24

    .line 167
    :cond_5c
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 168
    invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_24

    .line 169
    :cond_68
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 171
    invoke-virtual {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 174
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/internal/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_24

    .line 176
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_78
    const/4 v1, 0x1

    .line 177
    move-object v6, v5

    .line 179
    goto :goto_24

    .line 182
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_7b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 184
    const/4 v1, 0x0

    .line 185
    const/4 v6, 0x0

    goto :goto_24

    .line 186
    :cond_8a
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 187
    invoke-virtual {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto :goto_24

    .line 188
    :cond_96
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 191
    invoke-virtual {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_24

    .line 192
    invoke-static {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->access$000(Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_b9

    invoke-static {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->access$000(Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 194
    invoke-virtual {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto/16 :goto_24

    .line 196
    :cond_b9
    invoke-virtual {v2}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->addItem()V

    goto/16 :goto_24

    .line 199
    :cond_be
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 200
    const/4 v3, 0x1

    goto/16 :goto_24

    .line 205
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_c9
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_d1
    return-void

    .line 158
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_4a
        :pswitch_7b
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .registers 8
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    instance-of v3, p2, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v3, :cond_8

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    :cond_7
    :goto_7
    return-void

    .line 113
    :cond_8
    const/4 v2, 0x0

    .line 115
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_9
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 118
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Landroid/support/v7/internal/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_20
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_30
    .catchall {:try_start_9 .. :try_end_1a} :catchall_29

    .line 124
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    .line 119
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_20
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_21
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 124
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_29
    move-exception v3

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2f
    throw v3

    .line 121
    :catch_30
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    :try_start_31
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_29
.end method

###### Class android.support.v7.internal.view.SupportMenuInflater.InflatedOnMenuItemClickListener (android.support.v7.internal.view.SupportMenuInflater$InflatedOnMenuItemClickListener)
.class Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatedOnMenuItemClickListener"
.end annotation


# static fields
.field private static final PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/view/MenuItem;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "realOwner"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    sget-object v3, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    .line 248
    return-void

    .line 241
    :catch_12
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t resolve menu item onClick handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 246
    throw v2
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 252
    :try_start_1
    iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_20

    .line 253
    iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 256
    :goto_1f
    return v1

    .line 255
    :cond_20
    iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_1f

    .line 258
    :catch_2e
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class android.support.v7.internal.view.SupportMenuInflater.MenuState (android.support.v7.internal.view.SupportMenuInflater$MenuState)
.class Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/internal/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 3
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 329
    iput-object p1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 3
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p1, :cond_4

    .line 420
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v3}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 498
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 499
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v3

    .line 503
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_16
    return-object v3

    .line 500
    :catch_17
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupportMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 425
    iget-boolean v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_54

    move v3, v4

    :goto_18
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 434
    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_3c

    .line 435
    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 438
    :cond_3c
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_66

    .line 439
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v3}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 440
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_54
    const/4 v3, 0x0

    goto :goto_18

    .line 443
    :cond_56
    new-instance v3, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v5}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$400(Landroid/support/v7/internal/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 447
    :cond_66
    instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_ae

    move-object v3, p1

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object v2, v3

    .line 448
    .local v2, "impl":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :goto_6e
    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_7d

    .line 449
    instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_b0

    move-object v3, p1

    .line 450
    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 456
    :cond_7d
    :goto_7d
    const/4 v1, 0x0

    .line 457
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_98

    .line 458
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v5}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$600(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    .local v0, "actionView":Landroid/view/View;
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 461
    const/4 v1, 0x1

    .line 463
    .end local v0    # "actionView":Landroid/view/View;
    :cond_98
    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_a4

    .line 464
    if-nez v1, :cond_bb

    .line 465
    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 466
    const/4 v1, 0x1

    .line 472
    :cond_a4
    :goto_a4
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v3, :cond_ad

    .line 473
    iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 475
    :cond_ad
    return-void

    .line 447
    .end local v1    # "actionViewSpecified":Z
    .end local v2    # "impl":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_ae
    const/4 v2, 0x0

    goto :goto_6e

    .line 451
    .restart local v2    # "impl":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_b0
    instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    if-eqz v3, :cond_7d

    move-object v3, p1

    .line 452
    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_7d

    .line 468
    .restart local v1    # "actionViewSpecified":Z
    :cond_bb
    const-string v3, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4
.end method


# virtual methods
.method public addItem()V
    .registers 6

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 479
    iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 480
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 7

    .prologue
    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 484
    iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 485
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 486
    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v1}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 351
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 353
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 354
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 356
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 357
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 366
    iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v4}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 369
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I

    .line 370
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 371
    .local v1, "category":I
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 372
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 374
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 375
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 376
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 377
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 379
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 381
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 383
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_e1

    move v4, v5

    :goto_71
    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 389
    :goto_73
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 390
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 391
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 392
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 393
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 394
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 395
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 396
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 398
    iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_e8

    move v2, v5

    .line 399
    .local v2, "hasActionProvider":Z
    :goto_bd
    if-eqz v2, :cond_ea

    iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_ea

    iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_ea

    .line 400
    iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-static {v7}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$300(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ActionProvider;

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 411
    :goto_db
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    iput-boolean v6, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 414
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_e1
    move v4, v6

    .line 383
    goto :goto_71

    .line 387
    :cond_e3
    iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_73

    :cond_e8
    move v2, v6

    .line 398
    goto :goto_bd

    .line 404
    .restart local v2    # "hasActionProvider":Z
    :cond_ea
    if-eqz v2, :cond_f3

    .line 405
    const-string v4, "SupportMenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_f3
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_db
.end method

.method public resetGroup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 337
    iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 338
    iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 339
    iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 340
    iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 341
    iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 342
    return-void
.end method
