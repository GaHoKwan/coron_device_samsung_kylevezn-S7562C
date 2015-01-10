.class public interface abstract Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
.super Ljava/lang/Object;
.source "IUriGeneratorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/rcs/urigenerator/IUriGeneratorService$Stub;
    }
.end annotation


# virtual methods
.method public abstract generateSipUri(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
