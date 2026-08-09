package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zzrp {
    private final Context mContext;
    private final String zzanQ;
    private final PowerManager.WakeLock zzbhm;
    private WorkSource zzbhn;
    private final int zzbho;
    private final String zzbhp;
    private boolean zzbhq;
    private int zzbhr;
    private int zzbhs;
    private static String TAG = "WakeLock";
    private static String zzbhl = "*gcore*:";
    private static boolean DEBUG = false;

    public zzrp(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzrp(Context context, int i, String str, String str2, String str3) {
        this.zzbhq = true;
        com.google.android.gms.common.internal.zzx.zzh(str, "Wake lock name can NOT be empty");
        this.zzbho = i;
        this.zzbhp = str2;
        this.mContext = context.getApplicationContext();
        if (zzni.zzcV(str3) || "com.google.android.gms" == str3) {
            this.zzanQ = str;
        } else {
            this.zzanQ = zzbhl + str;
        }
        this.zzbhm = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (zznj.zzaA(this.mContext)) {
            if (zzni.zzcV(str3)) {
                if (com.google.android.gms.common.internal.zzd.zzakE && zzlz.isInitialized()) {
                    Log.e(TAG, "callingPackage is not supposed to be empty for wakelock " + this.zzanQ + "!", new IllegalArgumentException());
                    str3 = "com.google.android.gms";
                } else {
                    str3 = context.getPackageName();
                }
            }
            this.zzbhn = zznj.zzl(context, str3);
            zzc(this.zzbhn);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0077 A[Catch: all -> 0x00a3, TryCatch #0 {, blocks: (B:6:0x0069, B:8:0x006d, B:15:0x0080, B:16:0x00a1, B:11:0x0077, B:13:0x007b), top: B:21:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080 A[Catch: all -> 0x00a3, TryCatch #0 {, blocks: (B:6:0x0069, B:8:0x006d, B:15:0x0080, B:16:0x00a1, B:11:0x0077, B:13:0x007b), top: B:21:0x0069 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzfJ(java.lang.String r9) {
        /*
            r8 = this;
            boolean r0 = r8.zzfK(r9)
            java.lang.String r5 = r8.zzn(r9, r0)
            boolean r1 = com.google.android.gms.internal.zzrp.DEBUG
            if (r1 == 0) goto L68
            java.lang.String r1 = com.google.android.gms.internal.zzrp.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Release:\n mWakeLockName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r8.zzanQ
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\n mSecondaryName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r8.zzbhp
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nmReferenceCounted: "
            java.lang.StringBuilder r2 = r2.append(r3)
            boolean r3 = r8.zzbhq
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nreason: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r9)
            java.lang.String r3 = "\n mOpenEventCount"
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r8.zzbhs
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nuseWithReason: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r3 = "\ntrackingName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
        L68:
            monitor-enter(r8)
            boolean r1 = r8.zzbhq     // Catch: java.lang.Throwable -> La3
            if (r1 == 0) goto L77
            int r1 = r8.zzbhr     // Catch: java.lang.Throwable -> La3
            int r1 = r1 + (-1)
            r8.zzbhr = r1     // Catch: java.lang.Throwable -> La3
            if (r1 == 0) goto L80
            if (r0 != 0) goto L80
        L77:
            boolean r0 = r8.zzbhq     // Catch: java.lang.Throwable -> La3
            if (r0 != 0) goto La1
            int r0 = r8.zzbhs     // Catch: java.lang.Throwable -> La3
            r1 = 1
            if (r0 != r1) goto La1
        L80:
            com.google.android.gms.common.stats.zzi r0 = com.google.android.gms.common.stats.zzi.zzrZ()     // Catch: java.lang.Throwable -> La3
            android.content.Context r1 = r8.mContext     // Catch: java.lang.Throwable -> La3
            android.os.PowerManager$WakeLock r2 = r8.zzbhm     // Catch: java.lang.Throwable -> La3
            java.lang.String r2 = com.google.android.gms.common.stats.zzg.zza(r2, r5)     // Catch: java.lang.Throwable -> La3
            r3 = 8
            java.lang.String r4 = r8.zzanQ     // Catch: java.lang.Throwable -> La3
            int r6 = r8.zzbho     // Catch: java.lang.Throwable -> La3
            android.os.WorkSource r7 = r8.zzbhn     // Catch: java.lang.Throwable -> La3
            java.util.List r7 = com.google.android.gms.internal.zznj.zzb(r7)     // Catch: java.lang.Throwable -> La3
            r0.zza(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> La3
            int r0 = r8.zzbhs     // Catch: java.lang.Throwable -> La3
            int r0 = r0 + (-1)
            r8.zzbhs = r0     // Catch: java.lang.Throwable -> La3
        La1:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> La3
            return
        La3:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> La3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzrp.zzfJ(java.lang.String):void");
    }

    private boolean zzfK(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.zzbhp)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0081 A[Catch: all -> 0x00ac, TryCatch #0 {, blocks: (B:6:0x0073, B:8:0x0077, B:15:0x0089, B:16:0x00aa, B:11:0x0081, B:13:0x0085), top: B:21:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089 A[Catch: all -> 0x00ac, TryCatch #0 {, blocks: (B:6:0x0073, B:8:0x0077, B:15:0x0089, B:16:0x00aa, B:11:0x0081, B:13:0x0085), top: B:21:0x0073 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzj(java.lang.String r11, long r12) {
        /*
            r10 = this;
            boolean r0 = r10.zzfK(r11)
            java.lang.String r5 = r10.zzn(r11, r0)
            boolean r1 = com.google.android.gms.internal.zzrp.DEBUG
            if (r1 == 0) goto L72
            java.lang.String r1 = com.google.android.gms.internal.zzrp.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Acquire:\n mWakeLockName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r10.zzanQ
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\n mSecondaryName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r10.zzbhp
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nmReferenceCounted: "
            java.lang.StringBuilder r2 = r2.append(r3)
            boolean r3 = r10.zzbhq
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nreason: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r11)
            java.lang.String r3 = "\nmOpenEventCount"
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r10.zzbhs
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\nuseWithReason: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r3 = "\ntrackingName: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r3 = "\ntimeout: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r12)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
        L72:
            monitor-enter(r10)
            boolean r1 = r10.zzbhq     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L81
            int r1 = r10.zzbhr     // Catch: java.lang.Throwable -> Lac
            int r2 = r1 + 1
            r10.zzbhr = r2     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L89
            if (r0 != 0) goto L89
        L81:
            boolean r0 = r10.zzbhq     // Catch: java.lang.Throwable -> Lac
            if (r0 != 0) goto Laa
            int r0 = r10.zzbhs     // Catch: java.lang.Throwable -> Lac
            if (r0 != 0) goto Laa
        L89:
            com.google.android.gms.common.stats.zzi r0 = com.google.android.gms.common.stats.zzi.zzrZ()     // Catch: java.lang.Throwable -> Lac
            android.content.Context r1 = r10.mContext     // Catch: java.lang.Throwable -> Lac
            android.os.PowerManager$WakeLock r2 = r10.zzbhm     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = com.google.android.gms.common.stats.zzg.zza(r2, r5)     // Catch: java.lang.Throwable -> Lac
            r3 = 7
            java.lang.String r4 = r10.zzanQ     // Catch: java.lang.Throwable -> Lac
            int r6 = r10.zzbho     // Catch: java.lang.Throwable -> Lac
            android.os.WorkSource r7 = r10.zzbhn     // Catch: java.lang.Throwable -> Lac
            java.util.List r7 = com.google.android.gms.internal.zznj.zzb(r7)     // Catch: java.lang.Throwable -> Lac
            r8 = r12
            r0.zza(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lac
            int r0 = r10.zzbhs     // Catch: java.lang.Throwable -> Lac
            int r0 = r0 + 1
            r10.zzbhs = r0     // Catch: java.lang.Throwable -> Lac
        Laa:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> Lac
            return
        Lac:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> Lac
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzrp.zzj(java.lang.String, long):void");
    }

    private String zzn(String str, boolean z) {
        return (this.zzbhq && z) ? str : this.zzbhp;
    }

    public void acquire(long timeout) {
        if (!zzne.zzsg() && this.zzbhq) {
            Log.wtf(TAG, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: " + this.zzanQ);
        }
        zzj(null, timeout);
        this.zzbhm.acquire(timeout);
    }

    public boolean isHeld() {
        return this.zzbhm.isHeld();
    }

    public void release() {
        zzfJ(null);
        this.zzbhm.release();
    }

    public void setReferenceCounted(boolean value) {
        this.zzbhm.setReferenceCounted(value);
        this.zzbhq = value;
    }

    public void zzc(WorkSource workSource) {
        if (!zznj.zzaA(this.mContext) || workSource == null) {
            return;
        }
        if (this.zzbhn != null) {
            this.zzbhn.add(workSource);
        } else {
            this.zzbhn = workSource;
        }
        this.zzbhm.setWorkSource(this.zzbhn);
    }
}
