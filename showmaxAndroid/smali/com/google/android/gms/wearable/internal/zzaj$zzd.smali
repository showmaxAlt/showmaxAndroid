.class final Lcom/google/android/gms/wearable/internal/zzaj$zzd;
.super Lcom/google/android/gms/wearable/internal/zzaj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzaj",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzaj;-><init>()V

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbe;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/wearable/internal/zzbe;->zzb(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbe;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic zza(Ljava/lang/Object;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbe;
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzaj$zzd;->zza(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbe;

    move-result-object v0

    return-object v0
.end method
