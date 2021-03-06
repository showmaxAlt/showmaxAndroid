// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import java.util.List;

// Referenced classes of package android.support.design.widget:
//            FloatingActionButtonLollipop, FloatingActionButtonImpl, FloatingActionButtonEclairMr1, AnimationUtils, 
//            CoordinatorLayout, AppBarLayout, ViewGroupUtils, ShadowViewDelegate

public class FloatingActionButton extends ImageView
{
    public static class Behavior extends CoordinatorLayout.Behavior
    {

        private static final boolean SNACKBAR_BEHAVIOR_ENABLED;
        private boolean mIsAnimatingOut;
        private Rect mTmpRect;
        private float mTranslationY;

        private void animateIn(FloatingActionButton floatingactionbutton)
        {
            floatingactionbutton.setVisibility(0);
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                ViewCompat.animate(floatingactionbutton).scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).withLayer().setListener(null).start();
                return;
            } else
            {
                Animation animation = AnimationUtils.loadAnimation(floatingactionbutton.getContext(), android.support.design.R.anim.fab_in);
                animation.setDuration(200L);
                animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                floatingactionbutton.startAnimation(animation);
                return;
            }
        }

        private void animateOut(FloatingActionButton floatingactionbutton)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                ViewCompat.animate(floatingactionbutton).scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).withLayer().setListener(new ViewPropertyAnimatorListener() {

                    final Behavior this$0;

                    public void onAnimationCancel(View view)
                    {
                        mIsAnimatingOut = false;
                    }

                    public void onAnimationEnd(View view)
                    {
                        mIsAnimatingOut = false;
                        view.setVisibility(8);
                    }

                    public void onAnimationStart(View view)
                    {
                        mIsAnimatingOut = true;
                    }

            
            {
                this$0 = Behavior.this;
                super();
            }
                }).start();
                return;
            } else
            {
                Animation animation = AnimationUtils.loadAnimation(floatingactionbutton.getContext(), android.support.design.R.anim.fab_out);
                animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                animation.setDuration(200L);
                animation.setAnimationListener(floatingactionbutton. new AnimationUtils.AnimationListenerAdapter() {

                    final Behavior this$0;
                    final FloatingActionButton val$button;

                    public void onAnimationEnd(Animation animation)
                    {
                        mIsAnimatingOut = false;
                        button.setVisibility(8);
                    }

                    public void onAnimationStart(Animation animation)
                    {
                        mIsAnimatingOut = true;
                    }

            
            {
                this$0 = final_behavior;
                button = FloatingActionButton.this;
                super();
            }
                });
                floatingactionbutton.startAnimation(animation);
                return;
            }
        }

        private float getFabTranslationYForSnackbar(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton)
        {
            float f = 0.0F;
            List list = coordinatorlayout.getDependencies(floatingactionbutton);
            int i = 0;
            for (int j = list.size(); i < j;)
            {
                View view = (View)list.get(i);
                float f1 = f;
                if (view instanceof Snackbar.SnackbarLayout)
                {
                    f1 = f;
                    if (coordinatorlayout.doViewsOverlap(floatingactionbutton, view))
                    {
                        f1 = Math.min(f, ViewCompat.getTranslationY(view) - (float)view.getHeight());
                    }
                }
                i++;
                f = f1;
            }

            return f;
        }

        private void updateFabTranslationForSnackbar(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
        {
            float f = getFabTranslationYForSnackbar(coordinatorlayout, floatingactionbutton);
            if (f != mTranslationY)
            {
                ViewCompat.animate(floatingactionbutton).cancel();
                if (Math.abs(f - mTranslationY) == (float)view.getHeight())
                {
                    ViewCompat.animate(floatingactionbutton).translationY(f).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setListener(null);
                } else
                {
                    ViewCompat.setTranslationY(floatingactionbutton, f);
                }
                mTranslationY = f;
            }
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
        {
            return SNACKBAR_BEHAVIOR_ENABLED && (view instanceof Snackbar.SnackbarLayout);
        }

        public volatile boolean layoutDependsOn(CoordinatorLayout coordinatorlayout, View view, View view1)
        {
            return layoutDependsOn(coordinatorlayout, (FloatingActionButton)view, view1);
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorlayout, FloatingActionButton floatingactionbutton, View view)
        {
            if (!(view instanceof Snackbar.SnackbarLayout)) goto _L2; else goto _L1
_L1:
            updateFabTranslationForSnackbar(coordinatorlayout, floatingactionbutton, view);
_L4:
            return false;
_L2:
            if (view instanceof AppBarLayout)
            {
                AppBarLayout appbarlayout = (AppBarLayout)view;
                if (mTmpRect == null)
                {
                    mTmpRect = new Rect();
                }
                Rect rect = mTmpRect;
                ViewGroupUtils.getDescendantRect(coordinatorlayout, view, rect);
                if (rect.bottom <= appbarlayout.getMinimumHeightForVisibleOverlappingContent())
                {
                    if (!mIsAnimatingOut && floatingactionbutton.getVisibility() == 0)
                    {
                        animateOut(floatingactionbutton);
                    }
                } else
                if (floatingactionbutton.getVisibility() != 0)
                {
                    animateIn(floatingactionbutton);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public volatile boolean onDependentViewChanged(CoordinatorLayout coordinatorlayout, View view, View view1)
        {
            return onDependentViewChanged(coordinatorlayout, (FloatingActionButton)view, view1);
        }

        static 
        {
            boolean flag;
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            SNACKBAR_BEHAVIOR_ENABLED = flag;
        }


/*
        static boolean access$302(Behavior behavior, boolean flag)
        {
            behavior.mIsAnimatingOut = flag;
            return flag;
        }

*/

        public Behavior()
        {
        }
    }


    private static final int SIZE_MINI = 1;
    private static final int SIZE_NORMAL = 0;
    private ColorStateList mBackgroundTint;
    private android.graphics.PorterDuff.Mode mBackgroundTintMode;
    private int mBorderWidth;
    private int mContentPadding;
    private final FloatingActionButtonImpl mImpl;
    private int mRippleColor;
    private final Rect mShadowPadding;
    private int mSize;

    public FloatingActionButton(Context context)
    {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mShadowPadding = new Rect();
        attributeset = context.obtainStyledAttributes(attributeset, android.support.design.R.styleable.FloatingActionButton, i, android.support.design.R.style.Widget_Design_FloatingActionButton);
        context = attributeset.getDrawable(android.support.design.R.styleable.FloatingActionButton_android_background);
        mBackgroundTint = attributeset.getColorStateList(android.support.design.R.styleable.FloatingActionButton_backgroundTint);
        mBackgroundTintMode = parseTintMode(attributeset.getInt(android.support.design.R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        mRippleColor = attributeset.getColor(android.support.design.R.styleable.FloatingActionButton_rippleColor, 0);
        mSize = attributeset.getInt(android.support.design.R.styleable.FloatingActionButton_fabSize, 0);
        mBorderWidth = attributeset.getDimensionPixelSize(android.support.design.R.styleable.FloatingActionButton_borderWidth, 0);
        float f = attributeset.getDimension(android.support.design.R.styleable.FloatingActionButton_elevation, 0.0F);
        float f1 = attributeset.getDimension(android.support.design.R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
        attributeset.recycle();
        attributeset = new ShadowViewDelegate() {

            final FloatingActionButton this$0;

            public float getRadius()
            {
                return (float)getSizeDimension() / 2.0F;
            }

            public void setBackgroundDrawable(Drawable drawable)
            {
                View.this.setBackgroundDrawable(drawable);
            }

            public void setShadowPadding(int j, int k, int l, int i1)
            {
                mShadowPadding.set(j, k, l, i1);
                setPadding(mContentPadding + j, mContentPadding + k, mContentPadding + l, mContentPadding + i1);
            }

            
            {
                this$0 = FloatingActionButton.this;
                super();
            }
        };
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            mImpl = new FloatingActionButtonLollipop(this, attributeset);
        } else
        {
            mImpl = new FloatingActionButtonEclairMr1(this, attributeset);
        }
        i = (int)getResources().getDimension(android.support.design.R.dimen.fab_content_size);
        mContentPadding = (getSizeDimension() - i) / 2;
        mImpl.setBackgroundDrawable(context, mBackgroundTint, mBackgroundTintMode, mRippleColor, mBorderWidth);
        mImpl.setElevation(f);
        mImpl.setPressedTranslationZ(f1);
        setClickable(true);
    }

    static android.graphics.PorterDuff.Mode parseTintMode(int i, android.graphics.PorterDuff.Mode mode)
    {
        switch (i)
        {
        default:
            return mode;

        case 3: // '\003'
            return android.graphics.PorterDuff.Mode.SRC_OVER;

        case 5: // '\005'
            return android.graphics.PorterDuff.Mode.SRC_IN;

        case 9: // '\t'
            return android.graphics.PorterDuff.Mode.SRC_ATOP;

        case 14: // '\016'
            return android.graphics.PorterDuff.Mode.MULTIPLY;

        case 15: // '\017'
            return android.graphics.PorterDuff.Mode.SCREEN;
        }
    }

    private static int resolveAdjustedSize(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        j = android.view.View.MeasureSpec.getSize(j);
        switch (k)
        {
        default:
            return i;

        case 0: // '\0'
            return i;

        case -2147483648: 
            return Math.min(i, j);

        case 1073741824: 
            return j;
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        mImpl.onDrawableStateChanged(getDrawableState());
    }

    public ColorStateList getBackgroundTintList()
    {
        return mBackgroundTint;
    }

    public android.graphics.PorterDuff.Mode getBackgroundTintMode()
    {
        return mBackgroundTintMode;
    }

    final int getSizeDimension()
    {
        switch (mSize)
        {
        default:
            return getResources().getDimensionPixelSize(android.support.design.R.dimen.fab_size_normal);

        case 1: // '\001'
            return getResources().getDimensionPixelSize(android.support.design.R.dimen.fab_size_mini);
        }
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        mImpl.jumpDrawableToCurrentState();
    }

    protected void onMeasure(int i, int j)
    {
        int k = getSizeDimension();
        i = Math.min(resolveAdjustedSize(k, i), resolveAdjustedSize(k, j));
        setMeasuredDimension(mShadowPadding.left + i + mShadowPadding.right, mShadowPadding.top + i + mShadowPadding.bottom);
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        if (mImpl != null)
        {
            mImpl.setBackgroundDrawable(drawable, mBackgroundTint, mBackgroundTintMode, mRippleColor, mBorderWidth);
        }
    }

    public void setBackgroundTintList(ColorStateList colorstatelist)
    {
        mImpl.setBackgroundTintList(colorstatelist);
    }

    public void setBackgroundTintMode(android.graphics.PorterDuff.Mode mode)
    {
        mImpl.setBackgroundTintMode(mode);
    }

    public void setRippleColor(int i)
    {
        if (mRippleColor != i)
        {
            mRippleColor = i;
            mImpl.setRippleColor(i);
        }
    }



}
