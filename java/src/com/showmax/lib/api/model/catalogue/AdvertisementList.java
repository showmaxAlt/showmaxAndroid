// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Advertisement

public class AdvertisementList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AdvertisementList createFromParcel(Parcel parcel)
        {
            return new AdvertisementList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AdvertisementList[] newArray(int i)
        {
            return new AdvertisementList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public ArrayList advertisements;

    private AdvertisementList(Parcel parcel)
    {
        advertisements = new ArrayList();
        parcel.readTypedList(advertisements, Advertisement.CREATOR);
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedList(advertisements);
    }

}
