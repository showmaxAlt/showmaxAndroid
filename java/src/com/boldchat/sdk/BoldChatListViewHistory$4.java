// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.boldchat.sdk;


// Referenced classes of package com.boldchat.sdk:
//            BoldChatListViewHistory

class this._cls0
    implements Runnable
{

    final BoldChatListViewHistory this$0;

    public void run()
    {
        smoothScrollToPosition(BoldChatListViewHistory.access$200(BoldChatListViewHistory.this).getCount() - 1);
    }

    storyAdapter()
    {
        this$0 = BoldChatListViewHistory.this;
        super();
    }
}
