.class public abstract Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzbc(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzc(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zza(Ljava/lang/String;[BI)V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzcd(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzce(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzcf(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzcg(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzch(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzc(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zze(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzf(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zznZ()V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzg(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzc(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzci(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzeG(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzbb(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->zzcX(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/ConnectionInfo;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zza(Lcom/google/android/gms/games/internal/ConnectionInfo;)V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzoa()V

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zza(Landroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzy(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->zzi(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
