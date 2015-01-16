.class Lcom/sec/android/allshare/ProviderImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ProviderImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ProviderImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl$1;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 6
    .parameter "cvm"

    .prologue
    .line 131
    iget-object v4, p0, Lcom/sec/android/allshare/ProviderImpl$1;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;
    invoke-static {v4}, Lcom/sec/android/allshare/ProviderImpl;->access$000(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v4

    if-nez v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, actionID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 136
    .local v3, resBundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 138
    const-string v4, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, errStr:Ljava/lang/String;
    const-string v4, "com.sec.android.allshare.event.EVENT_PROVIDER_CONTENTS_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 141
    if-nez v1, :cond_2

    .line 142
    iget-object v4, p0, Lcom/sec/android/allshare/ProviderImpl$1;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;
    invoke-static {v4}, Lcom/sec/android/allshare/ProviderImpl;->access$000(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v4

    sget-object v5, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v4, v5}, Lcom/sec/android/allshare/media/Provider$IProviderEventListener;->onContentUpdated(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {v1}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v2

    .line 145
    .local v2, error:Lcom/sec/android/allshare/ERROR;
    iget-object v4, p0, Lcom/sec/android/allshare/ProviderImpl$1;->this$0:Lcom/sec/android/allshare/ProviderImpl;

    #getter for: Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;
    invoke-static {v4}, Lcom/sec/android/allshare/ProviderImpl;->access$000(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/sec/android/allshare/media/Provider$IProviderEventListener;->onContentUpdated(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method
