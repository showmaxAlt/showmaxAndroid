// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.quest:
//            Quest, QuestEntity, Milestone, MilestoneRef

public final class QuestRef extends zzd
    implements Quest
{

    private final int zzadF;
    private final Game zzaiU;

    QuestRef(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        zzaiU = new GameRef(dataholder, i);
        zzadF = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return QuestEntity.zza(this, obj);
    }

    public Quest freeze()
    {
        return new QuestEntity(this);
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public long getAcceptedTimestamp()
    {
        return getLong("accepted_ts");
    }

    public Uri getBannerImageUri()
    {
        return zzbb("quest_banner_image_uri");
    }

    public String getBannerImageUrl()
    {
        return getString("quest_banner_image_url");
    }

    public Milestone getCurrentMilestone()
    {
        return (Milestone)zzoZ().get(0);
    }

    public String getDescription()
    {
        return getString("quest_description");
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zza("quest_description", chararraybuffer);
    }

    public long getEndTimestamp()
    {
        return getLong("quest_end_ts");
    }

    public Game getGame()
    {
        return zzaiU;
    }

    public Uri getIconImageUri()
    {
        return zzbb("quest_icon_image_uri");
    }

    public String getIconImageUrl()
    {
        return getString("quest_icon_image_url");
    }

    public long getLastUpdatedTimestamp()
    {
        return getLong("quest_last_updated_ts");
    }

    public String getName()
    {
        return getString("quest_name");
    }

    public void getName(CharArrayBuffer chararraybuffer)
    {
        zza("quest_name", chararraybuffer);
    }

    public String getQuestId()
    {
        return getString("external_quest_id");
    }

    public long getStartTimestamp()
    {
        return getLong("quest_start_ts");
    }

    public int getState()
    {
        return getInteger("quest_state");
    }

    public int getType()
    {
        return getInteger("quest_type");
    }

    public int hashCode()
    {
        return QuestEntity.zza(this);
    }

    public boolean isEndingSoon()
    {
        return zzpa() <= System.currentTimeMillis() + 0x1b7740L;
    }

    public String toString()
    {
        return QuestEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((QuestEntity)freeze()).writeToParcel(parcel, i);
    }

    public List zzoZ()
    {
        ArrayList arraylist = new ArrayList(zzadF);
        for (int i = 0; i < zzadF; i++)
        {
            arraylist.add(new MilestoneRef(zzMd, zzNQ + i));
        }

        return arraylist;
    }

    public long zzpa()
    {
        return getLong("notification_ts");
    }
}
