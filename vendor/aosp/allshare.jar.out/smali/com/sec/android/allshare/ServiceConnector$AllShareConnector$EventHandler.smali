.class Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mEventId:Ljava/lang/String;

.field mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

.field final synthetic this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V
    .locals 1
    .parameter
    .parameter "event"
    .parameter "bundle"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 852
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 848
    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 850
    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 853
    iput-object p2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 854
    iput-object p3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 855
    iput-object p4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 856
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 860
    move-object v0, p1

    check-cast v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    .line 861
    .local v0, obj:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    if-nez p1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v1

    .line 863
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 864
    goto :goto_0

    .line 865
    :cond_2
    instance-of v3, p1, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 869
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
