.class final Lcom/showmax/lib/api/model/user/userlist/UserlistList$1;
.super Ljava/lang/Object;
.source "UserlistList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/user/userlist/UserlistList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/showmax/lib/api/model/user/userlist/UserlistList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/user/userlist/UserlistList;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/UserlistList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/showmax/lib/api/model/user/userlist/UserlistList;-><init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/user/userlist/UserlistList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/UserlistList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/showmax/lib/api/model/user/userlist/UserlistList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/showmax/lib/api/model/user/userlist/UserlistList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcom/showmax/lib/api/model/user/userlist/UserlistList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/model/user/userlist/UserlistList$1;->newArray(I)[Lcom/showmax/lib/api/model/user/userlist/UserlistList;

    move-result-object v0

    return-object v0
.end method
