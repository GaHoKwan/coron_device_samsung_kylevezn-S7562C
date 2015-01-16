.class Lcom/sec/android/allshare/TVControllerImpl$2;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/TVControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/TVControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$2;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 7
    .parameter "cvm"

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 253
    .local v1, resBundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v4, "BUNDLE_STRING_MAIN_TV_EVENT_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, strEventID:Ljava/lang/String;
    const-string v4, "BUNDLE_STRING_MAIN_TV_EVENT_XML"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, strXML:Ljava/lang/String;
    const-string v4, "AllShareEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TVControl] mAllShareEvent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;

    iget-object v4, p0, Lcom/sec/android/allshare/TVControllerImpl$2;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {v0, v4}, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;-><init>(Lcom/sec/android/allshare/TVControllerImpl;)V

    .line 261
    .local v0, lastChangeEvent:Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;
    invoke-virtual {v0, v3}, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->parseFromXML(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->getPowerOff()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PowerOFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 264
    iget-object v4, p0, Lcom/sec/android/allshare/TVControllerImpl$2;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #calls: Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V
    invoke-static {v4}, Lcom/sec/android/allshare/TVControllerImpl;->access$400(Lcom/sec/android/allshare/TVControllerImpl;)V

    goto :goto_0
.end method
