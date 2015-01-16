.class public abstract Lcom/sec/android/allshare/control/TVController$TVInformation;
.super Ljava/lang/Object;
.source "TVController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/control/TVController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TVInformation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/control/TVController;


# direct methods
.method protected constructor <init>(Lcom/sec/android/allshare/control/TVController;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/allshare/control/TVController$TVInformation;->this$0:Lcom/sec/android/allshare/control/TVController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isSupportWebSharing()Z
.end method
