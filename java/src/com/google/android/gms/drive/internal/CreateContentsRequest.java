// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzh

public class CreateContentsRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzh();
    final int zzFG;
    final int zzRW;

    public CreateContentsRequest(int i)
    {
        this(1, i);
    }

    CreateContentsRequest(int i, int j)
    {
        zzFG = i;
        boolean flag;
        if (j == 0x20000000 || j == 0x30000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Cannot create a new read-only contents!");
        zzRW = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzh.zza(this, parcel, i);
    }

}
