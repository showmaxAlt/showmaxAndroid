// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            TurnBasedMultiplayerImpl

private static abstract class <init> extends com.google.android.gms.games.ateMatchImpl
{

    public Result createFailedResult(Status status)
    {
        return zzaw(status);
    }

    public com.google.android.gms.games.multiplayer.turnbased._cls9 zzaw(Status status)
    {
        return new com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult(status) {

            final Status zzGT;
            final TurnBasedMultiplayerImpl.UpdateMatchImpl zzahI;

            public TurnBasedMatch getMatch()
            {
                return null;
            }

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzahI = TurnBasedMultiplayerImpl.UpdateMatchImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    private _cls1.zzGT(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }

    _cls1.zzGT(GoogleApiClient googleapiclient, _cls1.zzGT zzgt)
    {
        this(googleapiclient);
    }
}
