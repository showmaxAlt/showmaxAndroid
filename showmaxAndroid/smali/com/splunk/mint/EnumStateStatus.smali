.class final enum Lcom/splunk/mint/EnumStateStatus;
.super Ljava/lang/Enum;
.source "EnumStateStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splunk/mint/EnumStateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splunk/mint/EnumStateStatus;

.field public static final enum NA:Lcom/splunk/mint/EnumStateStatus;

.field public static final enum OFF:Lcom/splunk/mint/EnumStateStatus;

.field public static final enum ON:Lcom/splunk/mint/EnumStateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/splunk/mint/EnumStateStatus;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/splunk/mint/EnumStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumStateStatus;->ON:Lcom/splunk/mint/EnumStateStatus;

    new-instance v0, Lcom/splunk/mint/EnumStateStatus;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/splunk/mint/EnumStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumStateStatus;->OFF:Lcom/splunk/mint/EnumStateStatus;

    new-instance v0, Lcom/splunk/mint/EnumStateStatus;

    const-string v1, "NA"

    invoke-direct {v0, v1, v4}, Lcom/splunk/mint/EnumStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumStateStatus;->NA:Lcom/splunk/mint/EnumStateStatus;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/splunk/mint/EnumStateStatus;

    sget-object v1, Lcom/splunk/mint/EnumStateStatus;->ON:Lcom/splunk/mint/EnumStateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/splunk/mint/EnumStateStatus;->OFF:Lcom/splunk/mint/EnumStateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splunk/mint/EnumStateStatus;->NA:Lcom/splunk/mint/EnumStateStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/splunk/mint/EnumStateStatus;->$VALUES:[Lcom/splunk/mint/EnumStateStatus;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splunk/mint/EnumStateStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/splunk/mint/EnumStateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/splunk/mint/EnumStateStatus;

    return-object v0
.end method

.method public static values()[Lcom/splunk/mint/EnumStateStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/splunk/mint/EnumStateStatus;->$VALUES:[Lcom/splunk/mint/EnumStateStatus;

    invoke-virtual {v0}, [Lcom/splunk/mint/EnumStateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splunk/mint/EnumStateStatus;

    return-object v0
.end method
