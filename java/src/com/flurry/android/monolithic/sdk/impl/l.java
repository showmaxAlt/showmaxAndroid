// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            m, ja

public final class l
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/l.getSimpleName();

    private l()
    {
    }

    public static List a(DataInput datainput)
        throws IOException
    {
        if (46586 != datainput.readUnsignedShort())
        {
            throw new IOException("Unexpected data format");
        } else
        {
            return b(datainput);
        }
    }

    public static void a(List list, DataOutput dataoutput)
        throws IOException
    {
        dataoutput.writeShort(46586);
        b(list, dataoutput);
        dataoutput.writeShort(0);
    }

    private static List b(DataInput datainput)
    {
        ArrayList arraylist = new ArrayList();
        do
        {
            if (1 != datainput.readUnsignedShort())
            {
                return arraylist;
            }
            try
            {
                arraylist.add(new m(datainput));
            }
            // Misplaced declaration of an exception variable
            catch (DataInput datainput)
            {
                ja.a(3, a, "unable to read adLog: ", datainput);
                return arraylist;
            }
        } while (true);
    }

    private static void b(List list, DataOutput dataoutput)
    {
        Iterator iterator = list.iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        list = (m)iterator.next();
        dataoutput.writeShort(1);
        list.a(dataoutput);
        if (true) goto _L2; else goto _L1
        dataoutput;
        ja.a(3, a, (new StringBuilder()).append("unable to write adLog with GUID: ").append(list.b()).toString(), dataoutput);
_L1:
    }

}
