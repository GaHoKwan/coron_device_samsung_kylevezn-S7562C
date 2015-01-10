.class public Lnbisdk/hz;
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

    iput-object p1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    iput-object p2, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    return-void
.end method

.method public static h(Lnbisdk/ql;Ljava/lang/String;)F
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/hf;->g(Lnbisdk/ql;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestCancelled(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestComplete(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    new-instance v1, Lcom/nbi/common/NBIException;

    invoke-direct {v1, p1}, Lcom/nbi/common/NBIException;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1, v2}, Lcom/nbi/common/NBIListener;->onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, p1, v1}, Lcom/nbi/common/NBIListener;->onRequestProgress(ILcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestStart(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method

.method public onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0, v1}, Lcom/nbi/common/NBIListener;->onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V

    return-void
.end method
