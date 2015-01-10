.class public Lnbisdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/d;


# instance fields
.field private cM:Lnbisdk/ir;

.field private cN:Lcom/navbuilder/nb/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/navbuilder/nb/e;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/bm;->cM:Lnbisdk/ir;

    iput-object v0, p0, Lnbisdk/bm;->cN:Lcom/navbuilder/nb/e;

    iput-object p1, p0, Lnbisdk/bm;->cN:Lcom/navbuilder/nb/e;

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/bm;->cM:Lnbisdk/ir;

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    sget-boolean v3, Lnbisdk/me;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnbisdk/bm;->cM:Lnbisdk/ir;

    invoke-virtual {v3, v1}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static h(Lnbisdk/ql;)Lnbisdk/je;
    .locals 6

    new-instance v1, Lnbisdk/je;

    invoke-direct {v1}, Lnbisdk/je;-><init>()V

    const-string v0, "name"

    invoke-static {p0, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/je;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "value"

    invoke-static {v0, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/je;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "rating"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lnbisdk/gg;

    invoke-direct {v3}, Lnbisdk/gg;-><init>()V

    const-string v4, "star"

    invoke-static {v0, v4}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lnbisdk/gg;->ak(I)V

    const-string v4, "mpaa"

    invoke-virtual {v0, v4}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "mpaa"

    invoke-static {v0, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnbisdk/gg;->ad(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lnbisdk/je;->a(Lnbisdk/gg;)V

    goto :goto_0

    :cond_3
    const-string v4, "formatted-text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lnbisdk/bm;->i(Lnbisdk/ql;)Lnbisdk/in;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/je;->a(Lnbisdk/in;)V

    goto :goto_0

    :cond_4
    const-string v4, "search-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnbisdk/yg;

    invoke-direct {v3, v0}, Lnbisdk/yg;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v1, v3}, Lnbisdk/je;->a(Lnbisdk/gw;)V

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static i(Lnbisdk/ql;)Lnbisdk/in;
    .locals 13

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Lnbisdk/in;

    invoke-direct {v9}, Lnbisdk/in;-><init>()V

    invoke-virtual {p0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v10

    if-eqz v10, :cond_6

    move v1, v2

    move v3, v2

    move v5, v6

    move v7, v6

    move v8, v6

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v11

    const-string v12, "text"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v11, Lnbisdk/nn;

    invoke-direct {v11}, Lnbisdk/nn;-><init>()V

    const-string v12, "data"

    invoke-static {v0, v12}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lnbisdk/nn;->setText(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lnbisdk/nn;->h(B)V

    invoke-virtual {v11, v1}, Lnbisdk/nn;->i(B)V

    invoke-virtual {v11, v8, v7, v5}, Lnbisdk/nn;->e(III)V

    invoke-virtual {v9, v11}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    move v1, v2

    move v5, v6

    move v7, v6

    move v8, v6

    goto :goto_1

    :cond_2
    const-string v12, "link"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v11, Lnbisdk/nn;

    invoke-direct {v11}, Lnbisdk/nn;-><init>()V

    const-string v12, "text"

    invoke-static {v0, v12}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnbisdk/nn;->setText(Ljava/lang/String;)V

    const-string v12, "href"

    invoke-static {v0, v12}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lnbisdk/nn;->aV(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    goto :goto_1

    :cond_3
    const-string v12, "color"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v5, "red"

    invoke-static {v0, v5}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    const-string v5, "green"

    invoke-static {v0, v5}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v5, v11

    const-string v8, "blue"

    invoke-static {v0, v8}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v0, v11

    move v8, v7

    move v7, v5

    move v5, v0

    goto :goto_1

    :cond_4
    const-string v12, "font"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v1, "name"

    invoke-static {v0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "bold"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    :goto_2
    const-string v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    move v3, v4

    goto/16 :goto_1

    :cond_5
    const-string v0, "newline"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/nn;

    invoke-direct {v0}, Lnbisdk/nn;-><init>()V

    invoke-virtual {v0, v4}, Lnbisdk/nn;->N(Z)V

    invoke-virtual {v9, v0}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v9

    goto/16 :goto_0

    :cond_7
    move v1, v0

    move v3, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a([Lnbisdk/dm;)[Lnbisdk/lm;
    .locals 5

    array-length v0, p1

    new-array v2, v0, [Lnbisdk/lm;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lnbisdk/dm;->es()Lnbisdk/al;

    move-result-object v1

    iget-object v3, p0, Lnbisdk/bm;->cN:Lcom/navbuilder/nb/e;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context either null or invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v3, Lnbisdk/ug;

    invoke-direct {v3, p0, v1}, Lnbisdk/ug;-><init>(Lcom/navbuilder/nb/d;Lnbisdk/al;)V

    new-instance v1, Lnbisdk/g;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lnbisdk/dm;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lnbisdk/g;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lnbisdk/dm;->et()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lnbisdk/bm;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lnbisdk/g;->setData([B)V

    :try_start_0
    invoke-virtual {v3, v1}, Lnbisdk/ug;->a(Lnbisdk/g;)Lnbisdk/nl;

    move-result-object v1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lnbisdk/dm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lnbisdk/nl;->aU(Ljava/lang/String;)Lnbisdk/lm;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Lnbisdk/dv; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v3, Lnbisdk/me;->DEBUG:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnbisdk/bm;->cM:Lnbisdk/ir;

    invoke-virtual {v3, v1}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method
