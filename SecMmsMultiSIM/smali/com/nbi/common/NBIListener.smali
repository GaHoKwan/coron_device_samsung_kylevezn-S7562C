.class public interface abstract Lcom/nbi/common/NBIListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
.end method

.method public abstract onRequestComplete(Lcom/nbi/common/NBIRequest;)V
.end method

.method public abstract onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
.end method

.method public abstract onRequestProgress(ILcom/nbi/common/NBIRequest;)V
.end method

.method public abstract onRequestStart(Lcom/nbi/common/NBIRequest;)V
.end method

.method public abstract onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
.end method
