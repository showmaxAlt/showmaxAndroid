.class final Lcom/splunk/mint/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splunk/mint/Utils;->clearLastPingSentTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/splunk/mint/Utils$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 289
    iget-object v1, p0, Lcom/splunk/mint/Utils$3;->val$ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/splunk/mint/Utils$3;->val$ctx:Landroid/content/Context;

    const-string v2, "Mint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 291
    .local v0, "preferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LASTPINGTIME"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
