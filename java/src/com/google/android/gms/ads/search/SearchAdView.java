// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.zzbp;

// Referenced classes of package com.google.android.gms.ads.search:
//            SearchAdRequest

public final class SearchAdView extends ViewGroup
{

    private final zzbp zzll;

    public SearchAdView(Context context)
    {
        super(context);
        zzll = new zzbp(this);
    }

    public SearchAdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        zzll = new zzbp(this, attributeset, false);
    }

    public SearchAdView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        zzll = new zzbp(this, attributeset, false);
    }

    public void destroy()
    {
        zzll.destroy();
    }

    public AdListener getAdListener()
    {
        return zzll.getAdListener();
    }

    public AdSize getAdSize()
    {
        return zzll.getAdSize();
    }

    public String getAdUnitId()
    {
        return zzll.getAdUnitId();
    }

    public void loadAd(SearchAdRequest searchadrequest)
    {
        zzll.zza(searchadrequest.zzY());
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        View view = getChildAt(0);
        if (view != null && view.getVisibility() != 8)
        {
            int i1 = view.getMeasuredWidth();
            int j1 = view.getMeasuredHeight();
            i = (k - i - i1) / 2;
            j = (l - j - j1) / 2;
            view.layout(i, j, i1 + i, j1 + j);
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = 0;
        View view = getChildAt(0);
        AdSize adsize = getAdSize();
        int l;
        if (view != null && view.getVisibility() != 8)
        {
            measureChild(view, i, j);
            l = view.getMeasuredWidth();
            k = view.getMeasuredHeight();
        } else
        if (adsize != null)
        {
            Context context = getContext();
            l = adsize.getWidthInPixels(context);
            k = adsize.getHeightInPixels(context);
        } else
        {
            l = 0;
        }
        l = Math.max(l, getSuggestedMinimumWidth());
        k = Math.max(k, getSuggestedMinimumHeight());
        setMeasuredDimension(View.resolveSize(l, i), View.resolveSize(k, j));
    }

    public void pause()
    {
        zzll.pause();
    }

    public void resume()
    {
        zzll.resume();
    }

    public void setAdListener(AdListener adlistener)
    {
        zzll.setAdListener(adlistener);
    }

    public void setAdSize(AdSize adsize)
    {
        zzll.setAdSizes(new AdSize[] {
            adsize
        });
    }

    public void setAdUnitId(String s)
    {
        zzll.setAdUnitId(s);
    }
}
