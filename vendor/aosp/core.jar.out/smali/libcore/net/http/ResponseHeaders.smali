.class public final Llibcore/net/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Llibcore/net/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
    .locals 10
    .parameter "uri"
    .parameter "headers"

    .prologue
    const/4 v9, -0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    .line 91
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 103
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 110
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I

    .line 114
    iput-object p1, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 115
    iput-object p2, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    .line 117
    new-instance v2, Llibcore/net/http/ResponseHeaders$1;

    invoke-direct {v2, p0}, Llibcore/net/http/ResponseHeaders$1;-><init>(Llibcore/net/http/ResponseHeaders;)V

    .line 135
    .local v2, handler:Llibcore/net/http/HeaderParser$CacheControlHandler;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p2}, Llibcore/net/http/RawHeaders;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 136
    invoke-virtual {p2, v3}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p2, v3}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, value:Ljava/lang/String;
    const-string v8, "Cache-Control"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    invoke-static {v6, v2}, Llibcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string v8, "Date"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 141
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 142
    :cond_2
    const-string v8, "Expires"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 143
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 144
    :cond_3
    const-string v8, "Last-Modified"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_4
    const-string v8, "ETag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_5
    const-string v8, "Pragma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 149
    const-string v8, "no-cache"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    const/4 v8, 0x1

    iput-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 152
    :cond_6
    const-string v8, "Age"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 153
    invoke-static {v6}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 154
    :cond_7
    const-string v8, "Vary"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 156
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 157
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 159
    :cond_8
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 160
    .local v7, varyField:Ljava/lang/String;
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #varyField:Ljava/lang/String;
    :cond_9
    const-string v8, "Content-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 163
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 164
    :cond_a
    const-string v8, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 165
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_b
    const-string v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 168
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 169
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 171
    :cond_c
    const-string v8, "Connection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 172
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 173
    :cond_d
    const-string v8, "X-Android-Sent-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 174
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 175
    :cond_e
    const-string v8, "X-Android-Received-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 176
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1

    .line 179
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method static synthetic access$002(Llibcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Llibcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Llibcore/net/http/ResponseHeaders;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Llibcore/net/http/ResponseHeaders;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Llibcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Llibcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 12
    .parameter "nowMillis"

    .prologue
    const-wide/16 v0, 0x0

    .line 274
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 277
    .local v0, apparentReceivedAge:J
    :cond_0
    iget v8, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 280
    .local v2, receivedAge:J
    :goto_0
    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 281
    .local v6, responseDuration:J
    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 282
    .local v4, residentDuration:J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2           #receivedAge:J
    .end local v4           #residentDuration:J
    .end local v6           #responseDuration:J
    :cond_1
    move-wide v2, v0

    .line 277
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 290
    iget v6, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 291
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 307
    :cond_0
    :goto_0
    return-wide v4

    .line 292
    :cond_1
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_4

    .line 293
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 294
    .local v2, servedMillis:J
    :goto_1
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 295
    .local v0, delta:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .end local v0           #delta:J
    :goto_2
    move-wide v4, v0

    goto :goto_0

    .line 293
    .end local v2           #servedMillis:J
    :cond_2
    iget-wide v2, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0       #delta:J
    .restart local v2       #servedMillis:J
    :cond_3
    move-wide v0, v4

    .line 295
    goto :goto_2

    .line 296
    .end local v0           #delta:J
    .end local v2           #servedMillis:J
    :cond_4
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_0

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 303
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 304
    .restart local v2       #servedMillis:J
    :goto_3
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 305
    .restart local v0       #delta:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_0

    .line 303
    .end local v0           #delta:J
    .end local v2           #servedMillis:J
    :cond_5
    iget-wide v2, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 494
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseResponseSource(JLlibcore/net/http/RequestHeaders;)Ljava/net/ResponseSource;
    .locals 12
    .parameter "nowMillis"
    .parameter "request"

    .prologue
    const/4 v11, -0x1

    .line 386
    invoke-virtual {p0, p3}, Llibcore/net/http/ResponseHeaders;->isCacheable(Llibcore/net/http/RequestHeaders;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 387
    sget-object v8, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    .line 432
    :goto_0
    return-object v8

    .line 390
    :cond_0
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->isNoCache()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 391
    :cond_1
    sget-object v8, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0, p1, p2}, Llibcore/net/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v0

    .line 395
    .local v0, ageMillis:J
    invoke-direct {p0}, Llibcore/net/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v2

    .line 397
    .local v2, freshMillis:J
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 398
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 402
    :cond_3
    const-wide/16 v6, 0x0

    .line 403
    .local v6, minFreshMillis:J
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v8

    if-eq v8, v11, :cond_4

    .line 404
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 407
    :cond_4
    const-wide/16 v4, 0x0

    .line 408
    .local v4, maxStaleMillis:J
    iget-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v8, :cond_5

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v8

    if-eq v8, v11, :cond_5

    .line 409
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 412
    :cond_5
    iget-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    if-nez v8, :cond_8

    add-long v8, v0, v6

    add-long v10, v2, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    .line 413
    add-long v8, v0, v6

    cmp-long v8, v8, v2

    if-ltz v8, :cond_6

    .line 414
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v9, "Warning"

    const-string v10, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v8, v9, v10}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_6
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-lez v8, :cond_7

    invoke-direct {p0}, Llibcore/net/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 417
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v9, "Warning"

    const-string v10, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v8, v9, v10}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_7
    sget-object v8, Ljava/net/ResponseSource;->CACHE:Ljava/net/ResponseSource;

    goto/16 :goto_0

    .line 422
    :cond_8
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v8, :cond_b

    .line 423
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 428
    :cond_9
    :goto_1
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 429
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 432
    :cond_a
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    goto/16 :goto_0

    .line 424
    :cond_b
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_9

    .line 425
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_1

    .line 432
    :cond_c
    sget-object v8, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    goto/16 :goto_0
.end method

.method public combine(Llibcore/net/http/ResponseHeaders;)Llibcore/net/http/ResponseHeaders;
    .locals 6
    .parameter "network"

    .prologue
    .line 465
    new-instance v2, Llibcore/net/http/RawHeaders;

    invoke-direct {v2}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 466
    .local v2, result:Llibcore/net/http/RawHeaders;
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 469
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, fieldName:Ljava/lang/String;
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, value:Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_1
    invoke-static {v0}, Llibcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 475
    :cond_2
    invoke-virtual {v2, v0, v3}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v0           #fieldName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 480
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0       #fieldName:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 486
    .end local v0           #fieldName:Ljava/lang/String;
    :cond_5
    new-instance v4, Llibcore/net/http/ResponseHeaders;

    iget-object v5, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v4, v5, v2}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    return-object v4
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Llibcore/net/http/RawHeaders;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 195
    const-string v0, "close"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Llibcore/net/http/RequestHeaders;)Z
    .locals 4
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v2, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 329
    .local v0, responseCode:I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-virtual {p1}, Llibcore/net/http/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2

    iget v2, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 348
    :cond_2
    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_0

    .line 352
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 191
    const-string v0, "chunked"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 182
    const-string v0, "gzip"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3
    .parameter "sentRequestMillis"
    .parameter "receivedResponseMillis"

    .prologue
    .line 263
    iput-wide p1, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    .line 264
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput-wide p3, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    .line 266
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public validate(Llibcore/net/http/ResponseHeaders;)Z
    .locals 5
    .parameter "networkResponse"

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 457
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, cachedRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, newRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    .local v0, field:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const/4 v2, 0x0

    .line 374
    .end local v0           #field:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
