package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzfo {
    private final boolean zzDp;
    private final String zzDq;
    private final zzjp zzpD;

    public zzfo(zzjp zzjpVar, Map<String, String> map) {
        this.zzpD = zzjpVar;
        this.zzDq = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzDp = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzDp = true;
        }
    }

    public void execute() {
        if (this.zzpD == null) {
            zzin.zzaK("AdWebView is null");
        } else {
            this.zzpD.setRequestedOrientation("portrait".equalsIgnoreCase(this.zzDq) ? com.google.android.gms.ads.internal.zzr.zzbE().zzhw() : "landscape".equalsIgnoreCase(this.zzDq) ? com.google.android.gms.ads.internal.zzr.zzbE().zzhv() : this.zzDp ? -1 : com.google.android.gms.ads.internal.zzr.zzbE().zzhx());
        }
    }
}
