.class abstract Lnbisdk/vc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private AK:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/vc;->AK:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnbisdk/vc;->ne()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/vc;->AK:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract ne()Ljava/lang/Object;
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnbisdk/vc;->AK:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vc;->AK:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/vc;->AK:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/vc;->ne()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
