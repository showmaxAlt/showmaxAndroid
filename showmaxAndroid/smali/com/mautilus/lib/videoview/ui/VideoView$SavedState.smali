.class public Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currentPosition:I

.field private final resumeFromBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 892
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState$1;

    invoke-direct {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState$1;-><init>()V

    sput-object v0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 869
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->currentPosition:I

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->resumeFromBackground:Z

    .line 872
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mautilus/lib/videoview/ui/VideoView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mautilus/lib/videoview/ui/VideoView$1;

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "currentPosition"    # I
    .param p3, "resumeFromBackground"    # Z

    .prologue
    .line 862
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 863
    iput p2, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->currentPosition:I

    .line 864
    iput-boolean p3, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->resumeFromBackground:Z

    .line 865
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IZLcom/mautilus/lib/videoview/ui/VideoView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/mautilus/lib/videoview/ui/VideoView$1;

    .prologue
    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;-><init>(Landroid/os/Parcelable;IZ)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->currentPosition:I

    return v0
.end method

.method public isResumedFromBackground()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->resumeFromBackground:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 887
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 888
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->resumeFromBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    return-void

    .line 889
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
