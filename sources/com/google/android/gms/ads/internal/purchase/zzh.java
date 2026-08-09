package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.zzhb;
import com.google.android.gms.internal.zzin;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzh {
    private static zzh zzFX;
    private final zza zzFW;
    private static final String zzFV = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
    private static final Object zzpV = new Object();

    public class zza extends SQLiteOpenHelper {
        public zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            db.execSQL(zzh.zzFV);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            zzin.zzaJ("Database updated from version " + oldVersion + " to version " + newVersion);
            db.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            onCreate(db);
        }
    }

    zzh(Context context) {
        this.zzFW = new zza(context, "google_inapp_purchase.db");
    }

    public static zzh zzy(Context context) {
        zzh zzhVar;
        synchronized (zzpV) {
            if (zzFX == null) {
                zzFX = new zzh(context);
            }
            zzhVar = zzFX;
        }
        return zzhVar;
    }

    public int getRecordCount() {
        Cursor cursorRawQuery = null;
        int i = 0;
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase != null) {
                    try {
                        cursorRawQuery = writableDatabase.rawQuery("select count(*) from InAppPurchase", null);
                        if (cursorRawQuery.moveToFirst()) {
                            i = cursorRawQuery.getInt(0);
                        } else if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    } catch (SQLiteException e) {
                        zzin.zzaK("Error getting record count" + e.getMessage());
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    }
                }
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        }
        return i;
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzFW.getWritableDatabase();
        } catch (SQLiteException e) {
            zzin.zzaK("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("InAppPurchase", String.format(Locale.US, "%s = %d", "purchase_id", Long.valueOf(zzfVar.zzFP)), null);
            }
        }
    }

    public void zzb(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzpV) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", zzfVar.zzFR);
            contentValues.put("developer_payload", zzfVar.zzFQ);
            contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
            zzfVar.zzFP = writableDatabase.insert("InAppPurchase", null, contentValues);
            if (getRecordCount() > 20000) {
                zzfY();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a A[Catch: all -> 0x0031, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x002c, B:15:0x002f, B:28:0x005a, B:29:0x005d, B:24:0x0052), top: B:34:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void zzfY() {
        /*
            r11 = this;
            r9 = 0
            java.lang.Object r10 = com.google.android.gms.ads.internal.purchase.zzh.zzpV
            monitor-enter(r10)
            android.database.sqlite.SQLiteDatabase r0 = r11.getWritableDatabase()     // Catch: java.lang.Throwable -> L31
            if (r0 != 0) goto Lc
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
        Lb:
            return
        Lc:
            java.lang.String r7 = "record_time ASC"
            java.lang.String r1 = "InAppPurchase"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r8 = "1"
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L34 java.lang.Throwable -> L56
            if (r1 == 0) goto L2a
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            if (r0 == 0) goto L2a
            com.google.android.gms.ads.internal.purchase.zzf r0 = r11.zza(r1)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r11.zza(r0)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
        L2a:
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L31
        L2f:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
            goto Lb
        L31:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
            throw r0
        L34:
            r0 = move-exception
            r1 = r9
        L36:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e
            r2.<init>()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r3 = "Error remove oldest record"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L5e
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L5e
            com.google.android.gms.internal.zzin.zzaK(r0)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L31
            goto L2f
        L56:
            r0 = move-exception
            r1 = r9
        L58:
            if (r1 == 0) goto L5d
            r1.close()     // Catch: java.lang.Throwable -> L31
        L5d:
            throw r0     // Catch: java.lang.Throwable -> L31
        L5e:
            r0 = move-exception
            goto L58
        L60:
            r0 = move-exception
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.zzh.zzfY():void");
    }

    public List<zzf> zzg(long j) {
        Cursor cursorQuery;
        Cursor cursor = null;
        synchronized (zzpV) {
            LinkedList linkedList = new LinkedList();
            if (j <= 0) {
                return linkedList;
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase == null) {
                    return linkedList;
                }
                try {
                    cursorQuery = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(j));
                    try {
                        if (cursorQuery.moveToFirst()) {
                            do {
                                linkedList.add(zza(cursorQuery));
                            } while (cursorQuery.moveToNext());
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        zzin.zzaK("Error extracing purchase info: " + e.getMessage());
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    cursorQuery = null;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
                return linkedList;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
