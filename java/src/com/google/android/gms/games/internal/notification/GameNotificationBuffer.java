// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.AbstractDataBuffer;

// Referenced classes of package com.google.android.gms.games.internal.notification:
//            GameNotificationRef, GameNotification

public final class GameNotificationBuffer extends AbstractDataBuffer
{

    public Object get(int i)
    {
        return zzeR(i);
    }

    public GameNotification zzeR(int i)
    {
        return new GameNotificationRef(zzMd, i);
    }
}
