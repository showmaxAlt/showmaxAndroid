.class public Lcom/flurry/android/monolithic/sdk/impl/ku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/lc;


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/ji;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 284
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->b:Ljava/lang/String;

    .line 285
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 291
    if-ne p1, p0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/flurry/android/monolithic/sdk/impl/lc;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ku;->b:Ljava/lang/String;

    return-object v0
.end method
