// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.zzak;

// Referenced classes of package com.google.android.gms.internal:
//            zzog, zznf, zzoh, zznp

class eApiClient extends c
{

    final Session zzaaC;
    final zzog zzaaD;

    protected volatile void zza(com.google.android.gms.common.api. )
        throws RemoteException
    {
        zza((zznf));
    }

    protected void zza(zznf zznf1)
        throws RemoteException
    {
        zzoh zzoh1 = new zzoh(this);
        String s = zznf1.getContext().getPackageName();
        ((zznp)zznf1.zzjb()).zza(new zzak(zzaaC, zzoh1, s));
    }

    eApiClient(zzog zzog1, GoogleApiClient googleapiclient, Session session)
    {
        zzaaD = zzog1;
        zzaaC = session;
        super(googleapiclient);
    }
}
