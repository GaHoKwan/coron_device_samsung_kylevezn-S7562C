.class public Lcom/android/phone/AutoCSPService;
.super Landroid/app/Service;
.source "AutoCSPService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 18
    new-instance v0, Lcom/android/phone/AutoCSPService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AutoCSPService$1;-><init>(Lcom/android/phone/AutoCSPService;)V

    return-object v0
.end method
