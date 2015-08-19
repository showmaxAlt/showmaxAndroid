.class final Lretrofit/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lretrofit/RequestInterceptor$RequestFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestBuilder$MimeOverridingTypedOutput;
    }
.end annotation


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private body:Lretrofit/mime/TypedOutput;

.field private contentTypeHeader:Ljava/lang/String;

.field private final converter:Lretrofit/converter/Converter;

.field private final formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final isObservable:Z

.field private final isSynchronous:Z

.field private final multipartBody:Lretrofit/mime/MultipartTypedOutput;

.field private final paramAnnotations:[Ljava/lang/annotation/Annotation;

.field private queryParams:Ljava/lang/StringBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/converter/Converter;)V
    .locals 4
    .param p1, "apiUrl"    # Ljava/lang/String;
    .param p2, "methodInfo"    # Lretrofit/RestMethodInfo;
    .param p3, "converter"    # Lretrofit/converter/Converter;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    .line 68
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestParamAnnotations:[Ljava/lang/annotation/Annotation;

    iput-object v1, p0, Lretrofit/RequestBuilder;->paramAnnotations:[Ljava/lang/annotation/Annotation;

    .line 69
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    .line 70
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    iput-boolean v1, p0, Lretrofit/RequestBuilder;->isSynchronous:Z

    .line 71
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isObservable:Z

    iput-boolean v1, p0, Lretrofit/RequestBuilder;->isObservable:Z

    .line 73
    iget-object v1, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v1, p2, Lretrofit/RestMethodInfo;->contentTypeHeader:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    .line 78
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 80
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 81
    .local v0, "requestQuery":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    sget-object v1, Lretrofit/RequestBuilder$1;->$SwitchMap$retrofit$RestMethodInfo$RequestType:[I

    iget-object v2, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v2}, Lretrofit/RestMethodInfo$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :pswitch_0
    new-instance v1, Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-direct {v1}, Lretrofit/mime/FormUrlEncodedTypedOutput;-><init>()V

    iput-object v1, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 88
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 89
    iget-object v1, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    iput-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    .line 104
    :goto_0
    return-void

    .line 92
    :pswitch_1
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 93
    new-instance v1, Lretrofit/mime/MultipartTypedOutput;

    invoke-direct {v1}, Lretrofit/mime/MultipartTypedOutput;-><init>()V

    iput-object v1, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 94
    iget-object v1, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    iput-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto :goto_0

    .line 97
    :pswitch_2
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 98
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "urlEncodeValue"    # Z

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path replacement name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    if-nez p2, :cond_1

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path replacement \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value must not be null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    if-eqz p3, :cond_2

    .line 140
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "encodedValue":Ljava/lang/String;
    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 153
    .end local v1    # "encodedValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert path parameter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value to UTF-8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private addQueryParam(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "encodeName"    # Z
    .param p4, "encodeValue"    # Z

    .prologue
    .line 164
    instance-of v4, p2, Ljava/lang/Iterable;

    if-eqz v4, :cond_1

    .line 165
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, "iterableValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, p3, p4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 170
    .end local v2    # "iterableValue":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    const/4 v3, 0x0

    .local v3, "x":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "arrayLength":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 172
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "arrayValue":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, p3, p4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 171
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "arrayLength":I
    .end local v1    # "arrayValue":Ljava/lang/Object;
    .end local v3    # "x":I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, p3, p4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 180
    .end local p2    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encodeName"    # Z
    .param p4, "encodeValue"    # Z

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Query param name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    if-nez p2, :cond_1

    .line 187
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query param \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value must not be null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_1
    :try_start_0
    iget-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 191
    .local v1, "queryParams":Ljava/lang/StringBuilder;
    if-nez v1, :cond_2

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "queryParams":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v1    # "queryParams":Ljava/lang/StringBuilder;
    iput-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x26

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    if-eqz p3, :cond_3

    .line 198
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_3
    if-eqz p4, :cond_4

    .line 201
    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 195
    :cond_5
    const/16 v2, 0x3f

    goto :goto_0

    .line 204
    .end local v1    # "queryParams":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert query parameter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value to UTF-8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private addQueryParamMap(ILjava/util/Map;ZZ)V
    .locals 6
    .param p1, "parameterNumber"    # I
    .param p3, "encodeNames"    # Z
    .param p4, "encodeValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<**>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "entryKey":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 215
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " query map contained null key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 219
    .local v2, "entryValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3, p4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "entryKey":Ljava/lang/Object;
    .end local v2    # "entryValue":Ljava/lang/Object;
    :cond_2
    return-void
.end method


# virtual methods
.method public addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0, v0}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 161
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Header name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iput-object p2, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 116
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    iput-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 119
    :cond_2
    new-instance v1, Lretrofit/client/Header;

    invoke-direct {v1, p1, p2}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 157
    return-void
.end method

.method build()Lretrofit/client/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v7, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    invoke-virtual {v7}, Lretrofit/mime/MultipartTypedOutput;->getPartCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 386
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Multipart requests must contain at least one part."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 389
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 390
    .local v0, "apiUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .local v6, "url":Ljava/lang/StringBuilder;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    iget-object v7, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v5, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 399
    .local v5, "queryParams":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_2

    .line 400
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    iget-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    .line 404
    .local v1, "body":Lretrofit/mime/TypedOutput;
    iget-object v4, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 405
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    iget-object v7, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 406
    if-eqz v1, :cond_4

    .line 407
    new-instance v2, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;

    iget-object v7, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    invoke-direct {v2, v1, v7}, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;-><init>(Lretrofit/mime/TypedOutput;Ljava/lang/String;)V

    .end local v1    # "body":Lretrofit/mime/TypedOutput;
    .local v2, "body":Lretrofit/mime/TypedOutput;
    move-object v1, v2

    .line 418
    .end local v2    # "body":Lretrofit/mime/TypedOutput;
    .restart local v1    # "body":Lretrofit/mime/TypedOutput;
    :cond_3
    :goto_0
    new-instance v7, Lretrofit/client/Request;

    iget-object v8, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4, v1}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    return-object v7

    .line 409
    :cond_4
    new-instance v3, Lretrofit/client/Header;

    const-string v7, "Content-Type"

    iget-object v8, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v3, "header":Lretrofit/client/Header;
    if-nez v4, :cond_5

    .line 411
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 413
    :cond_5
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setArguments([Ljava/lang/Object;)V
    .locals 33
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 382
    :cond_0
    return-void

    .line 229
    :cond_1
    move-object/from16 v0, p1

    array-length v9, v0

    .line 230
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestBuilder;->isSynchronous:Z

    move/from16 v29, v0

    if-nez v29, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestBuilder;->isObservable:Z

    move/from16 v29, v0

    if-nez v29, :cond_2

    .line 231
    add-int/lit8 v9, v9, -0x1

    .line 233
    :cond_2
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v9, :cond_0

    .line 234
    aget-object v27, p1, v20

    .line 236
    .local v27, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->paramAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v29, v0

    aget-object v5, v29, v20

    .line 237
    .local v5, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    .line 238
    .local v6, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v29, Lretrofit/http/Path;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_5

    move-object/from16 v23, v5

    .line 239
    check-cast v23, Lretrofit/http/Path;

    .line 240
    .local v23, "path":Lretrofit/http/Path;
    invoke-interface/range {v23 .. v23}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v22

    .line 241
    .local v22, "name":Ljava/lang/String;
    if-nez v27, :cond_3

    .line 242
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Path parameter \""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\" value must not be null."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 245
    :cond_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v23 .. v23}, Lretrofit/http/Path;->encode()Z

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "path":Lretrofit/http/Path;
    .end local v27    # "value":Ljava/lang/Object;
    :cond_4
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 246
    .restart local v5    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_5
    const-class v29, Lretrofit/http/EncodedPath;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_7

    .line 247
    check-cast v5, Lretrofit/http/EncodedPath;

    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Lretrofit/http/EncodedPath;->value()Ljava/lang/String;

    move-result-object v22

    .line 248
    .restart local v22    # "name":Ljava/lang/String;
    if-nez v27, :cond_6

    .line 249
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Path parameter \""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\" value must not be null."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 252
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 253
    .end local v22    # "name":Ljava/lang/String;
    .restart local v5    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_7
    const-class v29, Lretrofit/http/Query;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_8

    .line 254
    if-eqz v27, :cond_4

    move-object/from16 v24, v5

    .line 255
    check-cast v24, Lretrofit/http/Query;

    .line 256
    .local v24, "query":Lretrofit/http/Query;
    invoke-interface/range {v24 .. v24}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v24 .. v24}, Lretrofit/http/Query;->encodeName()Z

    move-result v30

    invoke-interface/range {v24 .. v24}, Lretrofit/http/Query;->encodeValue()Z

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_1

    .line 258
    .end local v24    # "query":Lretrofit/http/Query;
    :cond_8
    const-class v29, Lretrofit/http/EncodedQuery;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_9

    .line 259
    if-eqz v27, :cond_4

    move-object/from16 v24, v5

    .line 260
    check-cast v24, Lretrofit/http/EncodedQuery;

    .line 261
    .local v24, "query":Lretrofit/http/EncodedQuery;
    invoke-interface/range {v24 .. v24}, Lretrofit/http/EncodedQuery;->value()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto/16 :goto_1

    .line 263
    .end local v24    # "query":Lretrofit/http/EncodedQuery;
    :cond_9
    const-class v29, Lretrofit/http/QueryMap;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_a

    .line 264
    if-eqz v27, :cond_4

    move-object/from16 v25, v5

    .line 265
    check-cast v25, Lretrofit/http/QueryMap;

    .line 266
    .local v25, "queryMap":Lretrofit/http/QueryMap;
    check-cast v27, Ljava/util/Map;

    .end local v27    # "value":Ljava/lang/Object;
    invoke-interface/range {v25 .. v25}, Lretrofit/http/QueryMap;->encodeNames()Z

    move-result v29

    invoke-interface/range {v25 .. v25}, Lretrofit/http/QueryMap;->encodeValues()Z

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/RequestBuilder;->addQueryParamMap(ILjava/util/Map;ZZ)V

    goto/16 :goto_1

    .line 268
    .end local v25    # "queryMap":Lretrofit/http/QueryMap;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_a
    const-class v29, Lretrofit/http/EncodedQueryMap;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_b

    .line 269
    if-eqz v27, :cond_4

    .line 270
    check-cast v27, Ljava/util/Map;

    .end local v27    # "value":Ljava/lang/Object;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/RequestBuilder;->addQueryParamMap(ILjava/util/Map;ZZ)V

    goto/16 :goto_1

    .line 272
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_b
    const-class v29, Lretrofit/http/Header;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_10

    .line 273
    if-eqz v27, :cond_4

    .line 274
    check-cast v5, Lretrofit/http/Header;

    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v22

    .line 275
    .restart local v22    # "name":Ljava/lang/String;
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 276
    check-cast v27, Ljava/lang/Iterable;

    .end local v27    # "value":Ljava/lang/Object;
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_c
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 277
    .local v21, "iterableValue":Ljava/lang/Object;
    if-eqz v21, :cond_c

    .line 278
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 281
    .end local v21    # "iterableValue":Ljava/lang/Object;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_f

    .line 282
    const/16 v28, 0x0

    .local v28, "x":I
    invoke-static/range {v27 .. v27}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .local v7, "arrayLength":I
    :goto_3
    move/from16 v0, v28

    if-ge v0, v7, :cond_4

    .line 283
    invoke-static/range {v27 .. v28}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 284
    .local v8, "arrayValue":Ljava/lang/Object;
    if-eqz v8, :cond_e

    .line 285
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_e
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 289
    .end local v7    # "arrayLength":I
    .end local v8    # "arrayValue":Ljava/lang/Object;
    .end local v28    # "x":I
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .end local v22    # "name":Ljava/lang/String;
    .restart local v5    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_10
    const-class v29, Lretrofit/http/Field;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_15

    .line 293
    if-eqz v27, :cond_4

    move-object/from16 v18, v5

    .line 294
    check-cast v18, Lretrofit/http/Field;

    .line 295
    .local v18, "field":Lretrofit/http/Field;
    invoke-interface/range {v18 .. v18}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v22

    .line 296
    .restart local v22    # "name":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lretrofit/http/Field;->encodeName()Z

    move-result v10

    .line 297
    .local v10, "encodeName":Z
    invoke-interface/range {v18 .. v18}, Lretrofit/http/Field;->encodeValue()Z

    move-result v12

    .line 298
    .local v12, "encodeValue":Z
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 299
    check-cast v27, Ljava/lang/Iterable;

    .end local v27    # "value":Ljava/lang/Object;
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_11
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 300
    .restart local v21    # "iterableValue":Ljava/lang/Object;
    if-eqz v21, :cond_11

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v30, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v10, v2, v12}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_4

    .line 304
    .end local v21    # "iterableValue":Ljava/lang/Object;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_12
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_14

    .line 305
    const/16 v28, 0x0

    .restart local v28    # "x":I
    invoke-static/range {v27 .. v27}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .restart local v7    # "arrayLength":I
    :goto_5
    move/from16 v0, v28

    if-ge v0, v7, :cond_4

    .line 306
    invoke-static/range {v27 .. v28}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 307
    .restart local v8    # "arrayValue":Ljava/lang/Object;
    if-eqz v8, :cond_13

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v29, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v10, v2, v12}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 305
    :cond_13
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 312
    .end local v7    # "arrayLength":I
    .end local v8    # "arrayValue":Ljava/lang/Object;
    .end local v28    # "x":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v10, v2, v12}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_1

    .line 315
    .end local v10    # "encodeName":Z
    .end local v12    # "encodeValue":Z
    .end local v18    # "field":Lretrofit/http/Field;
    .end local v22    # "name":Ljava/lang/String;
    :cond_15
    const-class v29, Lretrofit/http/FieldMap;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_18

    .line 316
    if-eqz v27, :cond_4

    move-object/from16 v19, v5

    .line 317
    check-cast v19, Lretrofit/http/FieldMap;

    .line 318
    .local v19, "fieldMap":Lretrofit/http/FieldMap;
    invoke-interface/range {v19 .. v19}, Lretrofit/http/FieldMap;->encodeNames()Z

    move-result v11

    .line 319
    .local v11, "encodeNames":Z
    invoke-interface/range {v19 .. v19}, Lretrofit/http/FieldMap;->encodeValues()Z

    move-result v13

    .line 320
    .local v13, "encodeValues":Z
    check-cast v27, Ljava/util/Map;

    .end local v27    # "value":Ljava/lang/Object;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_16
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 321
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 322
    .local v15, "entryKey":Ljava/lang/Object;
    if-nez v15, :cond_17

    .line 323
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Parameter #"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v20, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " field map contained null key."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 326
    :cond_17
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 327
    .local v17, "entryValue":Ljava/lang/Object;
    if-eqz v17, :cond_16

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v30, v0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v11, v2, v13}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_6

    .line 333
    .end local v11    # "encodeNames":Z
    .end local v13    # "encodeValues":Z
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v15    # "entryKey":Ljava/lang/Object;
    .end local v17    # "entryValue":Ljava/lang/Object;
    .end local v19    # "fieldMap":Lretrofit/http/FieldMap;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_18
    const-class v29, Lretrofit/http/Part;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_1b

    .line 334
    if-eqz v27, :cond_4

    move-object/from16 v29, v5

    .line 335
    check-cast v29, Lretrofit/http/Part;

    invoke-interface/range {v29 .. v29}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v22

    .line 336
    .restart local v22    # "name":Ljava/lang/String;
    check-cast v5, Lretrofit/http/Part;

    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Lretrofit/http/Part;->encoding()Ljava/lang/String;

    move-result-object v26

    .line 337
    .local v26, "transferEncoding":Ljava/lang/String;
    move-object/from16 v0, v27

    instance-of v0, v0, Lretrofit/mime/TypedOutput;

    move/from16 v29, v0

    if-eqz v29, :cond_19

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v29, v0

    check-cast v27, Lretrofit/mime/TypedOutput;

    .end local v27    # "value":Ljava/lang/Object;
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 339
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_19
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v29, v0

    new-instance v30, Lretrofit/mime/TypedString;

    check-cast v27, Ljava/lang/String;

    .end local v27    # "value":Ljava/lang/Object;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 342
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 345
    .end local v22    # "name":Ljava/lang/String;
    .end local v26    # "transferEncoding":Ljava/lang/String;
    .restart local v5    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1b
    const-class v29, Lretrofit/http/PartMap;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_20

    .line 346
    if-eqz v27, :cond_4

    .line 347
    check-cast v5, Lretrofit/http/PartMap;

    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Lretrofit/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v26

    .line 348
    .restart local v26    # "transferEncoding":Ljava/lang/String;
    check-cast v27, Ljava/util/Map;

    .end local v27    # "value":Ljava/lang/Object;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_1c
    :goto_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 349
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 350
    .restart local v15    # "entryKey":Ljava/lang/Object;
    if-nez v15, :cond_1d

    .line 351
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Parameter #"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v20, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " part map contained null key."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 354
    :cond_1d
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "entryName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 356
    .restart local v17    # "entryValue":Ljava/lang/Object;
    if-eqz v17, :cond_1c

    .line 357
    move-object/from16 v0, v17

    instance-of v0, v0, Lretrofit/mime/TypedOutput;

    move/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v30, v0

    check-cast v17, Lretrofit/mime/TypedOutput;

    .end local v17    # "entryValue":Ljava/lang/Object;
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto :goto_7

    .line 359
    .restart local v17    # "entryValue":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v30, v0

    new-instance v31, Lretrofit/mime/TypedString;

    check-cast v17, Ljava/lang/String;

    .end local v17    # "entryValue":Ljava/lang/Object;
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto :goto_7

    .line 363
    .restart local v17    # "entryValue":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_7

    .line 368
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v15    # "entryKey":Ljava/lang/Object;
    .end local v16    # "entryName":Ljava/lang/String;
    .end local v17    # "entryValue":Ljava/lang/Object;
    .end local v26    # "transferEncoding":Ljava/lang/String;
    .restart local v5    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_20
    const-class v29, Lretrofit/http/Body;

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_23

    .line 369
    if-nez v27, :cond_21

    .line 370
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Body parameter value must not be null."

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 372
    :cond_21
    move-object/from16 v0, v27

    instance-of v0, v0, Lretrofit/mime/TypedOutput;

    move/from16 v29, v0

    if-eqz v29, :cond_22

    .line 373
    check-cast v27, Lretrofit/mime/TypedOutput;

    .end local v27    # "value":Ljava/lang/Object;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_1

    .line 375
    .restart local v27    # "value":Ljava/lang/Object;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_1

    .line 378
    :cond_23
    new-instance v29, Ljava/lang/IllegalArgumentException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unknown annotation: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 379
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29
.end method
