// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public class og
{

    private final String a;
    private final String b;

    og(String s, String s1)
    {
        a = s;
        b = s1;
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a);
        stringbuilder.append(": ");
        stringbuilder.append(b);
        return stringbuilder.toString();
    }
}
