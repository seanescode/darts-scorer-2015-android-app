###### Class com.google.android.gms.internal.zzbh (com.google.android.gms.internal.zzbh)
.class public Lcom/google/android/gms/internal/zzbh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbh$zza;
    }
.end annotation


# instance fields
.field private final zztp:I

.field private final zztq:I

.field private final zztr:I

.field private final zzts:Lcom/google/android/gms/internal/zzbg;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    iput p1, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/zzbh;->zztp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbh;->zztr:I

    return-void
.end method

.method private zzv(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbh;->zzcM()Lcom/google/android/gms/internal/zzbh$zza;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbh$1;-><init>(Lcom/google/android/gms/internal/zzbh;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_19
    array-length v3, v1

    if-ge v0, v3, :cond_41

    iget v3, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    if-ge v0, v3, :cond_41

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2f

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbg;->zzu(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbh$zza;->write([B)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_2c

    :catch_3b
    move-exception v0

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/zzbh;->zztr:I

    packed-switch v0, :pswitch_data_3e

    const-string v0, ""

    :goto_2b
    return-object v0

    :pswitch_2c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbh;->zzw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :pswitch_35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method zzcM()Lcom/google/android/gms/internal/zzbh$zza;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzbh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbh$zza;-><init>()V

    return-object v0
.end method

.method zzw(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbh;->zzcM()Lcom/google/android/gms/internal/zzbh$zza;

    move-result-object v2

    new-instance v3, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    new-instance v4, Lcom/google/android/gms/internal/zzbh$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbh$2;-><init>(Lcom/google/android/gms/internal/zzbh;)V

    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1d
    array-length v4, v1

    if-ge v0, v4, :cond_34

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbi;->zzy(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_2c

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    iget v5, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    iget v6, p0, Lcom/google/android/gms/internal/zzbh;->zztp:I

    invoke-static {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzbk;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    goto :goto_29

    :cond_34
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbk$zza;

    :try_start_44
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbk$zza;->zztx:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbg;->zzu(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbh$zza;->write([B)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_38

    :catch_50
    move-exception v0

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

###### Class com.google.android.gms.internal.zzbh.AnonymousClass1 (com.google.android.gms.internal.zzbh$1)
.class Lcom/google/android/gms/internal/zzbh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztt:Lcom/google/android/gms/internal/zzbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbh$1;->zztt:Lcom/google/android/gms/internal/zzbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbh$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.internal.zzbh.AnonymousClass2 (com.google.android.gms.internal.zzbh$2)
.class Lcom/google/android/gms/internal/zzbh$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbh;->zzw(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbk$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztt:Lcom/google/android/gms/internal/zzbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbh$2;->zztt:Lcom/google/android/gms/internal/zzbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/zzbk$zza;

    check-cast p2, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbh$2;->zza(Lcom/google/android/gms/internal/zzbk$zza;Lcom/google/android/gms/internal/zzbk$zza;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbk$zza;Lcom/google/android/gms/internal/zzbk$zza;)I
    .registers 7

    iget v0, p1, Lcom/google/android/gms/internal/zzbk$zza;->zzty:I

    iget v1, p2, Lcom/google/android/gms/internal/zzbk$zza;->zzty:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbk$zza;->value:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzbk$zza;->value:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_7
.end method

###### Class com.google.android.gms.internal.zzbh.zza (com.google.android.gms.internal.zzbh$zza)
.class Lcom/google/android/gms/internal/zzbh$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field zztu:Ljava/io/ByteArrayOutputStream;

.field zztv:Landroid/util/Base64OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Landroid/util/Base64OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_1d
    .catchall {:try_start_6 .. :try_end_10} :catchall_2a

    move-result-object v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2a

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    goto :goto_15

    :catchall_2a
    move-exception v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztu:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    throw v0
.end method

.method public write([B)V
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh$zza;->zztv:Landroid/util/Base64OutputStream;

    invoke-virtual {v0, p1}, Landroid/util/Base64OutputStream;->write([B)V

    return-void
.end method
