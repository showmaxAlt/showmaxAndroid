// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.View;

// Referenced classes of package android.support.design.widget:
//            CircularBorderDrawable, ShadowViewDelegate

abstract class FloatingActionButtonImpl
{

    static final int EMPTY_STATE_SET[] = new int[0];
    static final int FOCUSED_ENABLED_STATE_SET[] = {
        0x101009c, 0x101009e
    };
    static final int PRESSED_ENABLED_STATE_SET[] = {
        0x10100a7, 0x101009e
    };
    final ShadowViewDelegate mShadowViewDelegate;
    final View mView;

    FloatingActionButtonImpl(View view, ShadowViewDelegate shadowviewdelegate)
    {
        mView = view;
        mShadowViewDelegate = shadowviewdelegate;
    }

    Drawable createBorderDrawable(int i, ColorStateList colorstatelist)
    {
        Object obj = mView.getResources();
        CircularBorderDrawable circularborderdrawable = newCircularDrawable();
        circularborderdrawable.setGradientColors(((Resources) (obj)).getColor(android.support.design.R.color.fab_stroke_top_outer_color), ((Resources) (obj)).getColor(android.support.design.R.color.fab_stroke_top_inner_color), ((Resources) (obj)).getColor(android.support.design.R.color.fab_stroke_end_inner_color), ((Resources) (obj)).getColor(android.support.design.R.color.fab_stroke_end_outer_color));
        circularborderdrawable.setBorderWidth(i);
        obj = DrawableCompat.wrap(circularborderdrawable);
        DrawableCompat.setTintList(((Drawable) (obj)), colorstatelist);
        DrawableCompat.setTintMode(((Drawable) (obj)), android.graphics.PorterDuff.Mode.DST_OVER);
        return ((Drawable) (obj));
    }

    abstract void jumpDrawableToCurrentState();

    CircularBorderDrawable newCircularDrawable()
    {
        return new CircularBorderDrawable();
    }

    abstract void onDrawableStateChanged(int ai[]);

    abstract void setBackgroundDrawable(Drawable drawable, ColorStateList colorstatelist, android.graphics.PorterDuff.Mode mode, int i, int j);

    abstract void setBackgroundTintList(ColorStateList colorstatelist);

    abstract void setBackgroundTintMode(android.graphics.PorterDuff.Mode mode);

    abstract void setElevation(float f);

    abstract void setPressedTranslationZ(float f);

    abstract void setRippleColor(int i);

}
