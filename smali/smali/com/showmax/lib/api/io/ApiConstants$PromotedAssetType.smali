.class public final enum Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PromotedAssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

.field public static final enum LATEST:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest"
    .end annotation
.end field

.field public static final enum PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pick"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->LATEST:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    .line 161
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    const-string v1, "PICK"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->LATEST:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    const-string v0, "latest"

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "pick"

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
