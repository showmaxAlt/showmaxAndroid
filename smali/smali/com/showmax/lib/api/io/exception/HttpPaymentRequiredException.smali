.class public Lcom/showmax/lib/api/io/exception/HttpPaymentRequiredException;
.super Lcom/showmax/lib/api/io/exception/HttpClientErrorException;
.source "HttpPaymentRequiredException.java"


# static fields
.field public static final HTTP_RETURN_CODE_PAYMENT_REQUIRED:I = 0x192

.field private static final serialVersionUID:J = 0x5f33304cf31766e8L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lretrofit/client/Response;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 26
    const/16 v0, 0x192

    invoke-direct {p0, p1, v0, p2}, Lcom/showmax/lib/api/io/exception/HttpClientErrorException;-><init>(Ljava/lang/String;ILretrofit/client/Response;)V

    .line 27
    return-void
.end method
