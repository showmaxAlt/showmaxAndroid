.class public final Lcom/mautilus/lib/videoview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonBarContainerTheme:[I

.field public static final ButtonBarContainerTheme_playerBarButtonStyle:I = 0x1

.field public static final ButtonBarContainerTheme_playerButtonBarStyle:I

.field public static final VideoView:[I

.field public static final VideoView_show_controls:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mautilus/lib/videoview/R$styleable;->ButtonBarContainerTheme:[I

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01019c

    aput v2, v0, v1

    sput-object v0, Lcom/mautilus/lib/videoview/R$styleable;->VideoView:[I

    return-void

    .line 130
    :array_0
    .array-data 4
        0x7f01005c
        0x7f01005d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
