.class public interface abstract Landroid/app/enterprise/license/IAgentCallback;
.super Ljava/lang/Object;
.source "IAgentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/license/IAgentCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestLicenseActivation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
