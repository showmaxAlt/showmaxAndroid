// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameBadge, GameBadgeEntity

public final class GameBadgeRef extends zzd
    implements GameBadge
{

    GameBadgeRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return GameBadgeEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzot();
    }

    public String getDescription()
    {
        return getString("badge_description");
    }

    public Uri getIconImageUri()
    {
        return zzbb("badge_icon_image_uri");
    }

    public String getTitle()
    {
        return getString("badge_title");
    }

    public int getType()
    {
        return getInteger("badge_type");
    }

    public int hashCode()
    {
        return GameBadgeEntity.zza(this);
    }

    public String toString()
    {
        return GameBadgeEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((GameBadgeEntity)zzot()).writeToParcel(parcel, i);
    }

    public GameBadge zzot()
    {
        return new GameBadgeEntity(this);
    }
}
