.class final enum Lcom/splunk/mint/EnumTransactionStatus;
.super Ljava/lang/Enum;
.source "EnumTransactionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splunk/mint/EnumTransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splunk/mint/EnumTransactionStatus;

.field public static final enum CANCEL:Lcom/splunk/mint/EnumTransactionStatus;

.field public static final enum FAIL:Lcom/splunk/mint/EnumTransactionStatus;

.field public static final enum SUCCESS:Lcom/splunk/mint/EnumTransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/splunk/mint/EnumTransactionStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/splunk/mint/EnumTransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumTransactionStatus;->SUCCESS:Lcom/splunk/mint/EnumTransactionStatus;

    new-instance v0, Lcom/splunk/mint/EnumTransactionStatus;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/splunk/mint/EnumTransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumTransactionStatus;->FAIL:Lcom/splunk/mint/EnumTransactionStatus;

    new-instance v0, Lcom/splunk/mint/EnumTransactionStatus;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/splunk/mint/EnumTransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splunk/mint/EnumTransactionStatus;->CANCEL:Lcom/splunk/mint/EnumTransactionStatus;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/splunk/mint/EnumTransactionStatus;

    sget-object v1, Lcom/splunk/mint/EnumTransactionStatus;->SUCCESS:Lcom/splunk/mint/EnumTransactionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/splunk/mint/EnumTransactionStatus;->FAIL:Lcom/splunk/mint/EnumTransactionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splunk/mint/EnumTransactionStatus;->CANCEL:Lcom/splunk/mint/EnumTransactionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/splunk/mint/EnumTransactionStatus;->$VALUES:[Lcom/splunk/mint/EnumTransactionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/splunk/mint/EnumTransactionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/splunk/mint/EnumTransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/splunk/mint/EnumTransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/splunk/mint/EnumTransactionStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/splunk/mint/EnumTransactionStatus;->$VALUES:[Lcom/splunk/mint/EnumTransactionStatus;

    invoke-virtual {v0}, [Lcom/splunk/mint/EnumTransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splunk/mint/EnumTransactionStatus;

    return-object v0
.end method
