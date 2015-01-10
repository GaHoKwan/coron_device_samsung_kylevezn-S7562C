.class public final Lnbisdk/mt;
.super Ljava/lang/Object;


# static fields
.field private static sT:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sU:Lnbisdk/cd;

.field private sV:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    new-instance v1, Lnbisdk/cd;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v2

    const-string v3, "respak.zip"

    invoke-direct {v1, v2, v3}, Lnbisdk/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lnbisdk/mt;->sU:Lnbisdk/cd;

    sget-object v1, Lnbisdk/mt;->sT:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lnbisdk/mt;->sT:Ljava/util/Hashtable;

    iget-object v1, p0, Lnbisdk/mt;->sU:Lnbisdk/cd;

    sget-object v2, Lnbisdk/mt;->sT:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Lnbisdk/cd;->a(Ljava/util/Hashtable;)V

    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lnbisdk/mt;->sV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnbisdk/mt;->sU:Lnbisdk/cd;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/mt;->sV:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Lnbisdk/cd;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/mt;->sV:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lnbisdk/mt;->sT:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/mt;->sU:Lnbisdk/cd;

    invoke-virtual {v0, v1}, Lnbisdk/cd;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lnbisdk/mt;->sT:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
