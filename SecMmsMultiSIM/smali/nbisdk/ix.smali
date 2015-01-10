.class public Lnbisdk/ix;
.super Ljava/lang/Object;


# instance fields
.field protected mListener:Lcom/nbi/common/NBIListener;

.field protected mRequest:Lcom/nbi/common/NBIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    iput-object p2, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v10, 0x25

    const/16 v0, 0x2b

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_5

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    :goto_1
    add-int/lit8 v1, v3, 0x2

    if-ge v1, v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1

    add-int/lit8 v1, v3, 0x3

    move v3, v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    sub-int v8, v3, v4

    div-int/lit8 v8, v8, 0x3

    if-ge v1, v8, :cond_3

    :cond_2
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    :cond_3
    move v1, v4

    move v4, v2

    :goto_2
    if-ge v1, v3, :cond_4

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, 0x3

    :try_start_0
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v1, v6, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestCancelled(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestComplete(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    new-instance v1, Lcom/nbi/common/NBIException;

    invoke-direct {v1, p1}, Lcom/nbi/common/NBIException;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1, v2}, Lcom/nbi/common/NBIListener;->onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, p1, v1}, Lcom/nbi/common/NBIListener;->onRequestProgress(ILcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestStart(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ix;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/ix;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method
