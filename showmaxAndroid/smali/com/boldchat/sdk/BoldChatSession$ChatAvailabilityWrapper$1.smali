.class Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$1;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->onChatAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;)V
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    invoke-interface {v0}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatAvailable()V

    .line 1363
    return-void
.end method
