// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzbf

public class OpenFileIntentSenderRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzbf();
    final int zzFG;
    final DriveId zzSA;
    final String zzSy;
    final String zzSz[];

    OpenFileIntentSenderRequest(int i, String s, String as[], DriveId driveid)
    {
        zzFG = i;
        zzSy = s;
        zzSz = as;
        zzSA = driveid;
    }

    public OpenFileIntentSenderRequest(String s, String as[], DriveId driveid)
    {
        this(1, s, as, driveid);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzbf.zza(this, parcel, i);
    }

}
