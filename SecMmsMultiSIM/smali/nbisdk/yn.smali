.class public Lnbisdk/yn;
.super Ljava/lang/Object;


# instance fields
.field private AU:Ljava/util/Hashtable;

.field private br:Ljava/util/Vector;

.field private jc:[B

.field private xz:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>([BLjava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/yn;-><init>()V

    iput-object p1, p0, Lnbisdk/yn;->jc:[B

    iput-object p2, p0, Lnbisdk/yn;->xz:Ljava/util/Hashtable;

    iput-object p3, p0, Lnbisdk/yn;->br:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public ap()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/yn;->jc:[B

    return-object v0
.end method

.method public bg(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lnbisdk/yn;->bw(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bw(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/yn;->xz:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected ca(I)Lnbisdk/yv;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/yn;->br:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yv;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected x(Lnbisdk/ql;)Lnbisdk/yv;
    .locals 4

    iget-object v0, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    iget-object v0, p0, Lnbisdk/yn;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yv;

    invoke-virtual {v0}, Lnbisdk/yv;->ak()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lnbisdk/yv;->y(Lnbisdk/ql;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yn;->AU:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yv;

    return-object v0
.end method
