// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            zzj

public class ValuesRemovedDetails
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    final int mIndex;
    final int zzFG;
    final String zzXF;
    final int zzXG;
    final int zzXf;
    final int zzXg;

    ValuesRemovedDetails(int i, int j, int k, int l, String s, int i1)
    {
        zzFG = i;
        mIndex = j;
        zzXf = k;
        zzXg = l;
        zzXF = s;
        zzXG = i1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

}
