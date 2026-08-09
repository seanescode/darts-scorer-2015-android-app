package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.internal.zzif;
import com.google.android.gms.internal.zziw;
import com.google.android.gms.internal.zzjf;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzgw implements Callable<zzif> {
    private static final long zzGF = TimeUnit.SECONDS.toMillis(60);
    private final Context mContext;
    private final zziw zzGG;
    private final com.google.android.gms.ads.internal.zzp zzGH;
    private final zzee zzGI;
    private JSONObject zzGL;
    private final zzif.zza zzGd;
    private final zzan zzyt;
    private final Object zzpV = new Object();
    private boolean zzGJ = false;
    private int zzGu = -2;
    private List<String> zzGK = null;

    public interface zza<T extends zzh.zza> {
        T zza(zzgw zzgwVar, JSONObject jSONObject) throws ExecutionException, JSONException, InterruptedException;
    }

    class zzb {
        public zzdf zzHb;

        zzb() {
        }
    }

    public zzgw(Context context, com.google.android.gms.ads.internal.zzp zzpVar, zzee zzeeVar, zziw zziwVar, zzan zzanVar, zzif.zza zzaVar) {
        this.mContext = context;
        this.zzGH = zzpVar;
        this.zzGG = zziwVar;
        this.zzGI = zzeeVar;
        this.zzGd = zzaVar;
        this.zzyt = zzanVar;
    }

    private zzh.zza zza(zzed zzedVar, zza zzaVar, JSONObject jSONObject) throws ExecutionException, JSONException, InterruptedException {
        if (zzgn()) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("tracking_urls_and_actions");
        String[] strArrZzc = zzc(jSONObject2, "impression_tracking_urls");
        this.zzGK = strArrZzc == null ? null : Arrays.asList(strArrZzc);
        this.zzGL = jSONObject2.optJSONObject("active_view");
        zzh.zza zzaVarZza = zzaVar.zza(this, jSONObject);
        if (zzaVarZza == null) {
            zzin.e("Failed to retrieve ad assets.");
            return null;
        }
        zzaVarZza.zzb(new com.google.android.gms.ads.internal.formats.zzi(this.mContext, this.zzGH, zzedVar, this.zzyt, jSONObject, zzaVarZza, this.zzGd.zzLd.zzrl));
        return zzaVarZza;
    }

    private zzif zza(zzh.zza zzaVar) {
        int i;
        synchronized (this.zzpV) {
            i = this.zzGu;
            if (zzaVar == null && this.zzGu == -2) {
                i = 0;
            }
        }
        return new zzif(this.zzGd.zzLd.zzHt, null, this.zzGd.zzLe.zzBQ, i, this.zzGd.zzLe.zzBR, this.zzGK, this.zzGd.zzLe.orientation, this.zzGd.zzLe.zzBU, this.zzGd.zzLd.zzHw, false, null, null, null, null, null, 0L, this.zzGd.zzrp, this.zzGd.zzLe.zzHS, this.zzGd.zzKY, this.zzGd.zzKZ, this.zzGd.zzLe.zzHY, this.zzGL, i != -2 ? null : zzaVar, null, null, null, this.zzGd.zzLe.zzIm);
    }

    private zzjg<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, final boolean z, boolean z2) throws JSONException {
        final String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new zzje(new com.google.android.gms.ads.internal.formats.zzc(null, Uri.parse(string), dOptDouble)) : this.zzGG.zza(string, new zziw.zza<com.google.android.gms.ads.internal.formats.zzc>() { // from class: com.google.android.gms.internal.zzgw.5
                @Override // com.google.android.gms.internal.zziw.zza
                /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
                public com.google.android.gms.ads.internal.formats.zzc zzh(InputStream inputStream) {
                    byte[] bArrZzk;
                    try {
                        bArrZzk = zzna.zzk(inputStream);
                    } catch (IOException e) {
                        bArrZzk = null;
                    }
                    if (bArrZzk == null) {
                        zzgw.this.zza(2, z);
                        return null;
                    }
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrZzk, 0, bArrZzk.length);
                    if (bitmapDecodeByteArray == null) {
                        zzgw.this.zza(2, z);
                        return null;
                    }
                    bitmapDecodeByteArray.setDensity((int) (160.0d * dOptDouble));
                    return new com.google.android.gms.ads.internal.formats.zzc(new BitmapDrawable(Resources.getSystem(), bitmapDecodeByteArray), Uri.parse(string), dOptDouble);
                }

                @Override // com.google.android.gms.internal.zziw.zza
                /* JADX INFO: renamed from: zzgo, reason: merged with bridge method [inline-methods] */
                public com.google.android.gms.ads.internal.formats.zzc zzgp() {
                    zzgw.this.zza(2, z);
                    return null;
                }
            });
        }
        zza(0, z);
        return new zzje(null);
    }

    private void zza(zzh.zza zzaVar, zzed zzedVar) {
        if (zzaVar instanceof com.google.android.gms.ads.internal.formats.zzf) {
            final com.google.android.gms.ads.internal.formats.zzf zzfVar = (com.google.android.gms.ads.internal.formats.zzf) zzaVar;
            zzb zzbVar = new zzb();
            zzdf zzdfVar = new zzdf() { // from class: com.google.android.gms.internal.zzgw.3
                @Override // com.google.android.gms.internal.zzdf
                public void zza(zzjp zzjpVar, Map<String, String> map) {
                    zzgw.this.zzb(zzfVar, map.get("asset"));
                }
            };
            zzbVar.zzHb = zzdfVar;
            zzedVar.zza("/nativeAdCustomClick", zzdfVar);
        }
    }

    private Integer zzb(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject zzb(final zzed zzedVar) throws JSONException, TimeoutException {
        if (zzgn()) {
            return null;
        }
        final zzjd zzjdVar = new zzjd();
        final zzb zzbVar = new zzb();
        zzdf zzdfVar = new zzdf() { // from class: com.google.android.gms.internal.zzgw.1
            @Override // com.google.android.gms.internal.zzdf
            public void zza(zzjp zzjpVar, Map<String, String> map) {
                zzedVar.zzb("/nativeAdPreProcess", zzbVar.zzHb);
                try {
                    String str = map.get("success");
                    if (!TextUtils.isEmpty(str)) {
                        zzjdVar.zzg(new JSONObject(str).getJSONArray("ads").getJSONObject(0));
                        return;
                    }
                } catch (JSONException e) {
                    zzin.zzb("Malformed native JSON response.", e);
                }
                zzgw.this.zzF(0);
                com.google.android.gms.common.internal.zzx.zza(zzgw.this.zzgn(), "Unable to set the ad state error!");
                zzjdVar.zzg(null);
            }
        };
        zzbVar.zzHb = zzdfVar;
        zzedVar.zza("/nativeAdPreProcess", zzdfVar);
        zzedVar.zza("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(this.zzGd.zzLe.body));
        return (JSONObject) zzjdVar.get(zzGF, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zzcp zzcpVar, String str) {
        try {
            zzct zzctVarZzs = this.zzGH.zzs(zzcpVar.getCustomTemplateId());
            if (zzctVarZzs != null) {
                zzctVarZzs.zza(zzcpVar, str);
            }
        } catch (RemoteException e) {
            zzin.zzd("Failed to call onCustomClick for asset " + str + ".", e);
        }
    }

    private String[] zzc(JSONObject jSONObject, String str) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        String[] strArr = new String[jSONArrayOptJSONArray.length()];
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            strArr[i] = jSONArrayOptJSONArray.getString(i);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Drawable> zzf(List<com.google.android.gms.ads.internal.formats.zzc> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        Iterator<com.google.android.gms.ads.internal.formats.zzc> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((Drawable) com.google.android.gms.dynamic.zze.zzp(it.next().zzdJ()));
        }
        return arrayList;
    }

    private zzed zzgm() throws ExecutionException, InterruptedException, CancellationException, TimeoutException {
        if (zzgn()) {
            return null;
        }
        zzed zzedVar = this.zzGI.zza(this.mContext, this.zzGd.zzLd.zzrl, (this.zzGd.zzLe.zzEF.indexOf("https") == 0 ? "https:" : "http:") + zzbt.zzwC.get(), this.zzyt).get(zzGF, TimeUnit.MILLISECONDS);
        zzedVar.zza(this.zzGH, this.zzGH, this.zzGH, this.zzGH, false, null, null, null, null);
        return zzedVar;
    }

    public void zzF(int i) {
        synchronized (this.zzpV) {
            this.zzGJ = true;
            this.zzGu = i;
        }
    }

    public zzjg<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, z, z2);
    }

    public List<zzjg<com.google.android.gms.ads.internal.formats.zzc>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            zza(0, z);
            return arrayList;
        }
        int length = z3 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(zza(jSONObject2, z, z2));
        }
        return arrayList;
    }

    public Future<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean zOptBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, zOptBoolean, z);
    }

    public void zza(int i, boolean z) {
        if (z) {
            zzF(i);
        }
    }

    protected zza zze(JSONObject jSONObject) throws JSONException, TimeoutException {
        if (zzgn()) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.zzGd.zzLd.zzrD != null ? this.zzGd.zzLd.zzrD.zzyA : false;
        boolean z2 = this.zzGd.zzLd.zzrD != null ? this.zzGd.zzLd.zzrD.zzyC : false;
        if ("2".equals(string)) {
            return new zzgx(z, z2);
        }
        if ("1".equals(string)) {
            return new zzgy(z, z2);
        }
        if ("3".equals(string)) {
            final String string2 = jSONObject.getString("custom_template_id");
            final zzjd zzjdVar = new zzjd();
            zzir.zzMc.post(new Runnable() { // from class: com.google.android.gms.internal.zzgw.2
                @Override // java.lang.Runnable
                public void run() {
                    zzjdVar.zzg(zzgw.this.zzGH.zzbv().get(string2));
                }
            });
            if (zzjdVar.get(zzGF, TimeUnit.MILLISECONDS) != null) {
                return new zzgz(z);
            }
            zzin.e("No handler for custom template: " + jSONObject.getString("custom_template_id"));
        } else {
            zzF(0);
        }
        return null;
    }

    public zzjg<com.google.android.gms.ads.internal.formats.zza> zzf(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            return new zzje(null);
        }
        final String strOptString = jSONObjectOptJSONObject.optString("text");
        final int iOptInt = jSONObjectOptJSONObject.optInt("text_size", -1);
        final Integer numZzb = zzb(jSONObjectOptJSONObject, "text_color");
        final Integer numZzb2 = zzb(jSONObjectOptJSONObject, "bg_color");
        final int iOptInt2 = jSONObjectOptJSONObject.optInt("animation_ms", 1000);
        final int iOptInt3 = jSONObjectOptJSONObject.optInt("presentation_ms", 4000);
        List<zzjg<com.google.android.gms.ads.internal.formats.zzc>> arrayList = new ArrayList<>();
        if (jSONObjectOptJSONObject.optJSONArray("images") != null) {
            arrayList = zza(jSONObjectOptJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(jSONObjectOptJSONObject, "image", false, false));
        }
        return zzjf.zza(zzjf.zzl(arrayList), new zzjf.zza<List<com.google.android.gms.ads.internal.formats.zzc>, com.google.android.gms.ads.internal.formats.zza>() { // from class: com.google.android.gms.internal.zzgw.4
            /* JADX WARN: Removed duplicated region for block: B:6:0x0009  */
            @Override // com.google.android.gms.internal.zzjf.zza
            /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.google.android.gms.ads.internal.formats.zza zzf(java.util.List<com.google.android.gms.ads.internal.formats.zzc> r10) {
                /*
                    r9 = this;
                    r7 = 0
                    if (r10 == 0) goto L9
                    boolean r0 = r10.isEmpty()     // Catch: android.os.RemoteException -> L2b
                    if (r0 == 0) goto Lc
                L9:
                    r0 = r7
                La:
                    r7 = r0
                Lb:
                    return r7
                Lc:
                    com.google.android.gms.ads.internal.formats.zza r0 = new com.google.android.gms.ads.internal.formats.zza     // Catch: android.os.RemoteException -> L2b
                    java.lang.String r1 = r2     // Catch: android.os.RemoteException -> L2b
                    java.util.List r2 = com.google.android.gms.internal.zzgw.zzg(r10)     // Catch: android.os.RemoteException -> L2b
                    java.lang.Integer r3 = r3     // Catch: android.os.RemoteException -> L2b
                    java.lang.Integer r4 = r4     // Catch: android.os.RemoteException -> L2b
                    int r5 = r5     // Catch: android.os.RemoteException -> L2b
                    if (r5 <= 0) goto L32
                    int r5 = r5     // Catch: android.os.RemoteException -> L2b
                    java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: android.os.RemoteException -> L2b
                L22:
                    int r6 = r6     // Catch: android.os.RemoteException -> L2b
                    int r8 = r7     // Catch: android.os.RemoteException -> L2b
                    int r6 = r6 + r8
                    r0.<init>(r1, r2, r3, r4, r5, r6)     // Catch: android.os.RemoteException -> L2b
                    goto La
                L2b:
                    r0 = move-exception
                    java.lang.String r1 = "Could not get attribution icon"
                    com.google.android.gms.internal.zzin.zzb(r1, r0)
                    goto Lb
                L32:
                    r5 = r7
                    goto L22
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgw.AnonymousClass4.zzf(java.util.List):com.google.android.gms.ads.internal.formats.zza");
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: zzgl, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.internal.zzif call() {
        /*
            r3 = this;
            com.google.android.gms.internal.zzed r0 = r3.zzgm()     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
            org.json.JSONObject r1 = r3.zzb(r0)     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
            com.google.android.gms.internal.zzgw$zza r2 = r3.zze(r1)     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
            com.google.android.gms.ads.internal.formats.zzh$zza r1 = r3.zza(r0, r2, r1)     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
            r3.zza(r1, r0)     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
            com.google.android.gms.internal.zzif r0 = r3.zza(r1)     // Catch: org.json.JSONException -> L18 java.util.concurrent.TimeoutException -> L2c java.lang.InterruptedException -> L33 java.util.concurrent.ExecutionException -> L35 java.util.concurrent.CancellationException -> L37
        L17:
            return r0
        L18:
            r0 = move-exception
            java.lang.String r1 = "Malformed native JSON response."
            com.google.android.gms.internal.zzin.zzd(r1, r0)
        L1e:
            boolean r0 = r3.zzGJ
            if (r0 != 0) goto L26
            r0 = 0
            r3.zzF(r0)
        L26:
            r0 = 0
            com.google.android.gms.internal.zzif r0 = r3.zza(r0)
            goto L17
        L2c:
            r0 = move-exception
            java.lang.String r1 = "Timeout when loading native ad."
            com.google.android.gms.internal.zzin.zzd(r1, r0)
            goto L1e
        L33:
            r0 = move-exception
            goto L1e
        L35:
            r0 = move-exception
            goto L1e
        L37:
            r0 = move-exception
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgw.call():com.google.android.gms.internal.zzif");
    }

    public boolean zzgn() {
        boolean z;
        synchronized (this.zzpV) {
            z = this.zzGJ;
        }
        return z;
    }
}
