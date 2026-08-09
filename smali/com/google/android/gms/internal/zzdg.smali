###### Class com.google.android.gms.internal.zzdg (com.google.android.gms.internal.zzdg)
.class public Lcom/google/android/gms/internal/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdg$zzc;,
        Lcom/google/android/gms/internal/zzdg$zzd;,
        Lcom/google/android/gms/internal/zzdg$zzb;,
        Lcom/google/android/gms/internal/zzdg$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method


# virtual methods
.method public zzQ(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_34

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    :try_start_c
    const-string v3, "http_request_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzdg;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzdg$zzb;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdg$zzb;)Lcom/google/android/gms/internal/zzdg$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdg$zzc;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdg$zzc;->zzdY()Lcom/google/android/gms/internal/zzdg$zzd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdg$zzd;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_6e

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const-string v0, "The request is not a valid JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->e(Ljava/lang/String;)V

    :try_start_3a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_33

    :catch_47
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_33

    :cond_4e
    :try_start_4e
    const-string v3, "response"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "reason"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdg$zzc;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6d} :catch_6e

    goto :goto_33

    :catch_6e
    move-exception v1

    :try_start_6f
    const-string v3, "response"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "reason"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_8e} :catch_8f

    goto :goto_33

    :catch_8f
    move-exception v1

    goto :goto_33
.end method

.method protected zza(Lcom/google/android/gms/internal/zzdg$zzb;)Lcom/google/android/gms/internal/zzdg$zzc;
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzb;->zzdV()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdg;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdg;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzb;->zzdW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdg$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdg$zza;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdg$zza;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    goto :goto_22

    :catch_3a
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/zzdg$zzc;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v8, v9, v1}, Lcom/google/android/gms/internal/zzdg$zzc;-><init>(Lcom/google/android/gms/internal/zzdg;ZLcom/google/android/gms/internal/zzdg$zzd;Ljava/lang/String;)V

    :goto_45
    return-object v0

    :cond_46
    :try_start_46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzb;->zzdX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzb;->zzdX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_6f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_86
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/zzdg$zza;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v7, v3, v2}, Lcom/google/android/gms/internal/zzdg$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_b7
    new-instance v1, Lcom/google/android/gms/internal/zzdg$zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzb;->zzdU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v5

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzir;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzdg$zzd;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdg$zzc;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/google/android/gms/internal/zzdg$zzc;-><init>(Lcom/google/android/gms/internal/zzdg;ZLcom/google/android/gms/internal/zzdg$zzd;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_dc} :catch_3a

    goto/16 :goto_45
.end method

.method protected zza(Lcom/google/android/gms/internal/zzdg$zzd;)Lorg/json/JSONObject;
    .registers 9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "http_request_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzd;->zzdU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzd;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "body"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzd;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzd;->zzdZ()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdg$zza;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "key"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdg$zza;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdg$zza;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_52} :catch_53

    goto :goto_2a

    :catch_53
    move-exception v0

    const-string v2, "Error constructing JSON for http response."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    return-object v1

    :cond_5a
    :try_start_5a
    const-string v0, "headers"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "response_code"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdg$zzd;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_68} :catch_53

    goto :goto_59
.end method

.method public zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzjp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdg$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzdg$1;-><init>(Lcom/google/android/gms/internal/zzdg;Ljava/util/Map;Lcom/google/android/gms/internal/zzjp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzjg;

    return-void
.end method

.method protected zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzdg$zzb;
    .registers 11

    const/4 v1, 0x0

    const-string v0, "http_request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "post_body"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_13
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_18} :catch_3a

    :goto_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "headers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2a

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_57

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_42

    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :catch_3a
    move-exception v0

    const-string v2, "Error constructing http request."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_18

    :cond_42
    const-string v7, "key"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/zzdg$zza;

    invoke-direct {v8, v7, v6}, Lcom/google/android/gms/internal/zzdg$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_57
    new-instance v1, Lcom/google/android/gms/internal/zzdg$zzb;

    invoke-direct {v1, v3, v0, v5, v4}, Lcom/google/android/gms/internal/zzdg$zzb;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.zzdg.AnonymousClass1 (com.google.android.gms.internal.zzdg$1)
.class Lcom/google/android/gms/internal/zzdg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzjp;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyy:Ljava/util/Map;

.field final synthetic zzzl:Lcom/google/android/gms/internal/zzjp;

.field final synthetic zzzm:Lcom/google/android/gms/internal/zzdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdg;Ljava/util/Map;Lcom/google/android/gms/internal/zzjp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$1;->zzzm:Lcom/google/android/gms/internal/zzdg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg$1;->zzyy:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$1;->zzzl:Lcom/google/android/gms/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$1;->zzyy:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdg$1;->zzzm:Lcom/google/android/gms/internal/zzdg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdg;->zzQ(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->e(Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdg$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdg$1$1;-><init>(Lcom/google/android/gms/internal/zzdg$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method

###### Class com.google.android.gms.internal.zzdg.AnonymousClass1.RunnableC00521 (com.google.android.gms.internal.zzdg$1$1)
.class Lcom/google/android/gms/internal/zzdg$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzn:Lorg/json/JSONObject;

.field final synthetic zzzo:Lcom/google/android/gms/internal/zzdg$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdg$1;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzo:Lcom/google/android/gms/internal/zzdg$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzn:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzo:Lcom/google/android/gms/internal/zzdg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdg$1;->zzzl:Lcom/google/android/gms/internal/zzjp;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzn:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzdg.zza (com.google.android.gms.internal.zzdg$zza)
.class Lcom/google/android/gms/internal/zzdg$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final mValue:Ljava/lang/String;

.field private final zzvs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zza;->zzvs:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg$zza;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zza;->zzvs:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zza;->mValue:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzdg.zzb (com.google.android.gms.internal.zzdg$zzb)
.class Lcom/google/android/gms/internal/zzdg$zzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzzp:Ljava/lang/String;

.field private final zzzq:Ljava/net/URL;

.field private final zzzr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzzs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzq:Ljava/net/URL;

    if-nez p3, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzr:Ljava/util/ArrayList;

    :goto_10
    iput-object p4, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzs:Ljava/lang/String;

    return-void

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzr:Ljava/util/ArrayList;

    goto :goto_10
.end method


# virtual methods
.method public zzdU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzp:Ljava/lang/String;

    return-object v0
.end method

.method public zzdV()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzq:Ljava/net/URL;

    return-object v0
.end method

.method public zzdW()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzdX()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzb;->zzzs:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzdg.zzc (com.google.android.gms.internal.zzdg$zzc)
.class Lcom/google/android/gms/internal/zzdg$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzzm:Lcom/google/android/gms/internal/zzdg;

.field private final zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

.field private final zzzu:Z

.field private final zzzv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdg;ZLcom/google/android/gms/internal/zzdg$zzd;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzm:Lcom/google/android/gms/internal/zzdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzu:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzv:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzu:Z

    return v0
.end method

.method public zzdY()Lcom/google/android/gms/internal/zzdg$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzdg.zzd (com.google.android.gms.internal.zzdg$zzd)
.class Lcom/google/android/gms/internal/zzdg$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzxY:Ljava/lang/String;

.field private final zzzp:Ljava/lang/String;

.field private final zzzw:I

.field private final zzzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzp:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzw:I

    if-nez p3, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    :goto_10
    iput-object p4, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzxY:Ljava/lang/String;

    return-void

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    goto :goto_10
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzxY:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzw:I

    return v0
.end method

.method public zzdU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzp:Ljava/lang/String;

    return-object v0
.end method

.method public zzdZ()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    return-object v0
.end method
