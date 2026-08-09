package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzbv {
    final Context mContext;
    final String zzsy;
    String zzxj;
    BlockingQueue<zzcb> zzxl;
    ExecutorService zzxm;
    LinkedHashMap<String, String> zzxn = new LinkedHashMap<>();
    Map<String, zzby> zzxo = new HashMap();
    private AtomicBoolean zzxp = new AtomicBoolean(false);
    private File zzxq;

    public zzbv(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzsy = str;
        this.zzxj = str2;
        this.zzxp.set(zzbt.zzwi.get().booleanValue());
        if (this.zzxp.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzxq = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzxn.put(entry.getKey(), entry.getValue());
        }
        this.zzxl = new ArrayBlockingQueue(30);
        this.zzxm = Executors.newSingleThreadExecutor();
        this.zzxm.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbv.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                zzbv.this.zzdx();
            }
        });
        this.zzxo.put("action", zzby.zzxt);
        this.zzxo.put("ad_format", zzby.zzxt);
        this.zzxo.put("e", zzby.zzxu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zza(java.io.File r4, java.lang.String r5) throws java.lang.Throwable {
        /*
            r3 = this;
            if (r4 == 0) goto L45
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            r0 = 1
            r1.<init>(r4, r0)     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            byte[] r0 = r5.getBytes()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L1b
        L1a:
            return
        L1b:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzin.zzd(r1, r0)
            goto L1a
        L22:
            r0 = move-exception
            r1 = r2
        L24:
            java.lang.String r2 = "CsiReporter: Cannot write to file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzin.zzd(r2, r0)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L2f
            goto L1a
        L2f:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzin.zzd(r1, r0)
            goto L1a
        L36:
            r0 = move-exception
            r1 = r2
        L38:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.io.IOException -> L3e
        L3d:
            throw r0
        L3e:
            r1 = move-exception
            java.lang.String r2 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzin.zzd(r2, r1)
            goto L3d
        L45:
            java.lang.String r0 = "CsiReporter: File doesn't exists. Cannot write CSI data to file."
            com.google.android.gms.internal.zzin.zzaK(r0)
            goto L1a
        L4b:
            r0 = move-exception
            goto L38
        L4d:
            r0 = move-exception
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbv.zza(java.io.File, java.lang.String):void");
    }

    private void zzc(Map<String, String> map, String str) throws Throwable {
        String strZza = zza(this.zzxj, map, str);
        if (this.zzxp.get()) {
            zza(this.zzxq, strZza);
        } else {
            com.google.android.gms.ads.internal.zzr.zzbC().zzc(this.mContext, this.zzsy, strZza);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzdx() throws Throwable {
        while (true) {
            try {
                zzcb zzcbVarTake = this.zzxl.take();
                String strZzdD = zzcbVarTake.zzdD();
                if (!TextUtils.isEmpty(strZzdD)) {
                    zzc(zza(this.zzxn, zzcbVarTake.zzn()), strZzdD);
                }
            } catch (InterruptedException e) {
                zzin.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public zzby zzL(String str) {
        zzby zzbyVar = this.zzxo.get(str);
        return zzbyVar != null ? zzbyVar : zzby.zzxs;
    }

    String zza(String str, Map<String, String> map, @NonNull String str2) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(builderBuildUpon.build().toString());
        sb.append("&").append("it").append("=").append(str2);
        return sb.toString();
    }

    Map<String, String> zza(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzL(key).zzb((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public boolean zza(zzcb zzcbVar) {
        return this.zzxl.offer(zzcbVar);
    }

    public void zzb(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzxn.put("e", TextUtils.join(",", list));
    }
}
