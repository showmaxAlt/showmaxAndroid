.class Lcom/google/android/gms/internal/zzob$2;
.super Lcom/google/android/gms/internal/zzna$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzob;->readDataType(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzna$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataTypeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaaf:Lcom/google/android/gms/internal/zzob;

.field final synthetic zzaag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzob;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzob$2;->zzaaf:Lcom/google/android/gms/internal/zzob;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzob$2;->zzaag:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzna$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzob$2;->zzv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzna;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzob$2;->zza(Lcom/google/android/gms/internal/zzna;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzna;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzob$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzob$zza;-><init>(Lcom/google/android/gms/common/api/zza$zzb;Lcom/google/android/gms/internal/zzob$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzna;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzna;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznk;

    new-instance v3, Lcom/google/android/gms/fitness/request/zzl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzob$2;->zzaag:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/zzl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzni;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zznk;->zza(Lcom/google/android/gms/fitness/request/zzl;)V

    return-void
.end method

.method protected zzv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->zzD(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method
