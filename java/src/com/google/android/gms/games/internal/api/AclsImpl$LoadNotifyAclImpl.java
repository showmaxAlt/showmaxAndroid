// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            AclsImpl

private static abstract class  extends com.google.android.gms.games.l
{

    public Result createFailedResult(Status status)
    {
        return zzL(status);
    }

    public com.google.android.gms.games.internal.game.zL zzL(Status status)
    {
        return AclsImpl.zzK(status);
    }
}
