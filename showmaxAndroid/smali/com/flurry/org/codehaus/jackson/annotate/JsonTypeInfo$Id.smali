.class public final enum Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum CUSTOM:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum MINIMAL_CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum NAME:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;


# instance fields
.field private final _defaultPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 74
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const-string v1, "CLASS"

    const-string v2, "@class"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 98
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const-string v1, "MINIMAL_CLASS"

    const-string v2, "@c"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 104
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const-string v1, "NAME"

    const-string v2, "@type"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 111
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CUSTOM:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CUSTOM:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->$VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->$VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method


# virtual methods
.method public getDefaultPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;

    return-object v0
.end method
