.class public Lcom/showmax/lib/api/model/catalogue/Ratings;
.super Ljava/lang/Object;
.source "Ratings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Ratings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fcc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcc"
    .end annotation
.end field

.field public icflix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icflix"
    .end annotation
.end field

.field public mpaa:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mpaa"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Ratings$1;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Ratings$1;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Ratings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->mpaa:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->fcc:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->icflix:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/showmax/lib/api/model/catalogue/Ratings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/showmax/lib/api/model/catalogue/Ratings$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/model/catalogue/Ratings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getRatingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->mpaa:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->mpaa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->mpaa:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->fcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->fcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->fcc:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRatingText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->icflix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->icflix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->icflix:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->mpaa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->fcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/showmax/lib/api/model/catalogue/Ratings;->icflix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
