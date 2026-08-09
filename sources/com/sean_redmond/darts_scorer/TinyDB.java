package com.sean_redmond.darts_scorer;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TinyDB {
    private String DEFAULT_APP_IMAGEDATA_DIRECTORY;
    private String lastImagePath = "";
    private SharedPreferences preferences;

    public TinyDB(Context appContext) {
        this.preferences = PreferenceManager.getDefaultSharedPreferences(appContext);
    }

    public Bitmap getImage(String path) {
        try {
            Bitmap bitmapFromPath = BitmapFactory.decodeFile(path);
            return bitmapFromPath;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getSavedImagePath() {
        return this.lastImagePath;
    }

    public String putImage(String theFolder, String theImageName, Bitmap theBitmap) throws Throwable {
        if (theFolder == null || theImageName == null || theBitmap == null) {
            return null;
        }
        this.DEFAULT_APP_IMAGEDATA_DIRECTORY = theFolder;
        String mFullPath = setupFullPath(theImageName);
        if (!mFullPath.equals("")) {
            this.lastImagePath = mFullPath;
            saveBitmap(mFullPath, theBitmap);
            return mFullPath;
        }
        return mFullPath;
    }

    public boolean putImageWithFullPath(String fullPath, Bitmap theBitmap) {
        return (fullPath == null || theBitmap == null || !saveBitmap(fullPath, theBitmap)) ? false : true;
    }

    private String setupFullPath(String imageName) {
        File mFolder = new File(Environment.getExternalStorageDirectory(), this.DEFAULT_APP_IMAGEDATA_DIRECTORY);
        if (!isExternalStorageReadable() || !isExternalStorageWritable() || mFolder.exists() || mFolder.mkdirs()) {
            return mFolder.getPath() + '/' + imageName;
        }
        Log.e("ERROR", "Failed to setup folder");
        return "";
    }

    private boolean saveBitmap(String fullPath, Bitmap bitmap) throws Throwable {
        boolean bitmapCompressed;
        FileOutputStream out;
        if (fullPath == null || bitmap == null) {
            return false;
        }
        boolean fileCreated = false;
        boolean streamClosed = false;
        File imageFile = new File(fullPath);
        if (imageFile.exists() && !imageFile.delete()) {
            return false;
        }
        try {
            fileCreated = imageFile.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        FileOutputStream out2 = null;
        try {
            try {
                out = new FileOutputStream(imageFile);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bitmapCompressed = bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            if (out != null) {
                try {
                    out.flush();
                    out.close();
                    streamClosed = true;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    streamClosed = false;
                }
            }
        } catch (Exception e4) {
            e = e4;
            out2 = out;
            e.printStackTrace();
            bitmapCompressed = false;
            if (out2 != null) {
                try {
                    out2.flush();
                    out2.close();
                    streamClosed = true;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    streamClosed = false;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            out2 = out;
            if (out2 != null) {
                try {
                    out2.flush();
                    out2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
        return fileCreated && bitmapCompressed && streamClosed;
    }

    public int getInt(String key) {
        return this.preferences.getInt(key, 0);
    }

    public ArrayList<Integer> getListInt(String key, ArrayList<Integer> dartsThrownToWinLeg) {
        String[] myList = TextUtils.split(this.preferences.getString(key, ""), "‚‗‚");
        ArrayList<String> arrayToList = new ArrayList<>(Arrays.asList(myList));
        ArrayList<Integer> newList = new ArrayList<>();
        for (String item : arrayToList) {
            newList.add(Integer.valueOf(Integer.parseInt(item)));
        }
        return newList;
    }

    public long getLong(String key, long defaultValue) {
        return this.preferences.getLong(key, defaultValue);
    }

    public float getFloat(String key) {
        return this.preferences.getFloat(key, 0.0f);
    }

    public double getDouble(String key, double defaultValue) {
        String number = getString(key);
        try {
            double defaultValue2 = Double.parseDouble(number);
            return defaultValue2;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public ArrayList<Double> getListDouble(String key) {
        String[] myList = TextUtils.split(this.preferences.getString(key, ""), "‚‗‚");
        ArrayList<String> arrayToList = new ArrayList<>(Arrays.asList(myList));
        ArrayList<Double> newList = new ArrayList<>();
        for (String item : arrayToList) {
            newList.add(Double.valueOf(Double.parseDouble(item)));
        }
        return newList;
    }

    public String getString(String key) {
        return this.preferences.getString(key, "");
    }

    public ArrayList<String> getListString(String key) {
        return new ArrayList<>(Arrays.asList(TextUtils.split(this.preferences.getString(key, ""), "‚‗‚")));
    }

    public boolean getBoolean(String key) {
        return this.preferences.getBoolean(key, false);
    }

    public ArrayList<Boolean> getListBoolean(String key) {
        ArrayList<String> myList = getListString(key);
        ArrayList<Boolean> newList = new ArrayList<>();
        for (String item : myList) {
            if (item.equals("true")) {
                newList.add(true);
            } else {
                newList.add(false);
            }
        }
        return newList;
    }

    public void putInt(String key, int value) {
        checkForNullKey(key);
        this.preferences.edit().putInt(key, value).apply();
    }

    public void putListInt(String key, ArrayList<Integer> intList) {
        checkForNullKey(key);
        Integer[] myIntList = (Integer[]) intList.toArray(new Integer[intList.size()]);
        this.preferences.edit().putString(key, TextUtils.join("‚‗‚", myIntList)).apply();
    }

    public void putLong(String key, long value) {
        checkForNullKey(key);
        this.preferences.edit().putLong(key, value).apply();
    }

    public void putFloat(String key, float value) {
        checkForNullKey(key);
        this.preferences.edit().putFloat(key, value).apply();
    }

    public void putDouble(String key, double value) {
        checkForNullKey(key);
        putString(key, String.valueOf(value));
    }

    public void putListDouble(String key, ArrayList<Double> doubleList) {
        checkForNullKey(key);
        Double[] myDoubleList = (Double[]) doubleList.toArray(new Double[doubleList.size()]);
        this.preferences.edit().putString(key, TextUtils.join("‚‗‚", myDoubleList)).apply();
    }

    public void putString(String key, String value) {
        checkForNullKey(key);
        checkForNullValue(value);
        this.preferences.edit().putString(key, value).apply();
    }

    public void putListString(String key, ArrayList<String> stringList) {
        checkForNullKey(key);
        String[] myStringList = (String[]) stringList.toArray(new String[stringList.size()]);
        this.preferences.edit().putString(key, TextUtils.join("‚‗‚", myStringList)).apply();
    }

    public void putBoolean(String key, boolean value) {
        checkForNullKey(key);
        this.preferences.edit().putBoolean(key, value).apply();
    }

    public void putListBoolean(String key, ArrayList<Boolean> boolList) {
        checkForNullKey(key);
        ArrayList<String> newList = new ArrayList<>();
        for (Boolean item : boolList) {
            if (item.booleanValue()) {
                newList.add("true");
            } else {
                newList.add("false");
            }
        }
        putListString(key, newList);
    }

    public void remove(String key) {
        this.preferences.edit().remove(key).apply();
    }

    public boolean deleteImage(String path) {
        return new File(path).delete();
    }

    public void clear() {
        this.preferences.edit().clear().apply();
    }

    public Map<String, ?> getAll() {
        return this.preferences.getAll();
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.preferences.registerOnSharedPreferenceChangeListener(listener);
    }

    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.preferences.unregisterOnSharedPreferenceChangeListener(listener);
    }

    public static boolean isExternalStorageWritable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean isExternalStorageReadable() {
        String state = Environment.getExternalStorageState();
        return "mounted".equals(state) || "mounted_ro".equals(state);
    }

    public void checkForNullKey(String key) {
        if (key == null) {
            throw new NullPointerException();
        }
    }

    public void checkForNullValue(String value) {
        if (value == null) {
            throw new NullPointerException();
        }
    }
}
