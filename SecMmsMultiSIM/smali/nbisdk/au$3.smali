.class final Lnbisdk/au$3;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bL:Lnbisdk/au;


# direct methods
.method constructor <init>(Lnbisdk/au;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/au$3;->bL:Lnbisdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/iy;Lnbisdk/cr;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/au$3;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$3;->bL:Lnbisdk/au;

    iget-object v1, p0, Lnbisdk/au$3;->bL:Lnbisdk/au;

    invoke-static {v1}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnbisdk/au;->a(Lnbisdk/ct;Lnbisdk/iy;)V

    :cond_0
    return-void
.end method

.method public final d(Lnbisdk/qk;)V
    .locals 0

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
