.class final Lcom/google/android/gms/common/api/PendingResults$zza;
.super Lcom/google/android/gms/common/api/AbstractPendingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/PendingResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/AbstractPendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzNm:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzNm:Lcom/google/android/gms/common/api/Result;

    return-void
.end method


# virtual methods
.method protected createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/PendingResults$zza;, "Lcom/google/android/gms/common/api/PendingResults$zza<TR;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzNm:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Creating failed results is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzNm:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method
