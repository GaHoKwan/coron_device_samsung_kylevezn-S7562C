.class public abstract Lcom/sec/android/allshare/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract getDeviceFinder()Lcom/sec/android/allshare/DeviceFinder;
.end method

.method public abstract getServiceState()Lcom/sec/android/allshare/ServiceConnector$ServiceState;
.end method

.method public abstract getServiceVersion()Ljava/lang/String;
.end method
