.class public interface abstract Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
.super Ljava/lang/Object;
.source "KiesDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/KiesDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKiesActionResponseListner"
.end annotation


# virtual methods
.method public abstract onOptionalCommandResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSetAutoSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSetSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
.end method
