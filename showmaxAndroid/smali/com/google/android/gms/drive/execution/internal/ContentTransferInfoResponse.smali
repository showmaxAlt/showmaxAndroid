.class public Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzFG:I

.field final zzJp:I

.field final zzTc:J

.field final zzTd:J

.field final zzrX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/execution/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/execution/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIJJ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "type"    # I
    .param p3, "status"    # I
    .param p4, "bytesTransferred"    # J
    .param p6, "totalBytes"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->zzFG:I

    iput p2, p0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->zzJp:I

    iput p3, p0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->zzrX:I

    iput-wide p4, p0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->zzTc:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;->zzTd:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/execution/internal/zza;->zza(Lcom/google/android/gms/drive/execution/internal/ContentTransferInfoResponse;Landroid/os/Parcel;I)V

    return-void
.end method
