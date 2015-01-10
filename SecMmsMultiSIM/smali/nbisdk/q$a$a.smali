.class public Lnbisdk/q$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/lp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic gq:Lnbisdk/q$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnbisdk/q$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/q$a$a;-><init>(Lnbisdk/q$a;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/q$a;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/q$a$a;->gq:Lnbisdk/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/lt;I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lnbisdk/lt;->rp:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Lnbisdk/lt;[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lnbisdk/lt;->rp:F

    iget-object v1, p0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget v3, p1, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, p1, v4

    aget v1, p1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p1, v5

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/df;Lnbisdk/lh;)V
    .locals 4

    iget-object v0, p0, Lnbisdk/q$a$a;->gq:Lnbisdk/q$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnbisdk/q$a;->a(Lnbisdk/q$a;J)J

    iget-object v0, p0, Lnbisdk/q$a$a;->gq:Lnbisdk/q$a;

    invoke-static {v0}, Lnbisdk/q$a;->a(Lnbisdk/q$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lnbisdk/df;->getResultCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lnbisdk/q$a$a;->gq:Lnbisdk/q$a;

    invoke-static {v2}, Lnbisdk/q$a;->a(Lnbisdk/q$a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0}, Lnbisdk/df;->G(I)Lnbisdk/fd;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/q$a$a;->gq:Lnbisdk/q$a;

    invoke-static {v0}, Lnbisdk/q$a;->b(Lnbisdk/q$a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method
