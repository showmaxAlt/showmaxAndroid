.class public Lcom/google/android/gms/internal/zzkw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzkx;


# instance fields
.field final zzFG:I

.field public final zzQH:Ljava/lang/String;

.field public final zzQI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzkx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->CREATOR:Lcom/google/android/gms/internal/zzkx;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzkw;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkw;->zzQH:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzkw;->zzQI:I

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzkx;->zza(Lcom/google/android/gms/internal/zzkw;Landroid/os/Parcel;I)V

    return-void
.end method
