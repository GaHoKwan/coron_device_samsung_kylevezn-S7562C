.class Lcom/sec/android/allshare/TVControllerImpl$3;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
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
    .line 270
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 12
    .parameter "cvm"

    .prologue
    const/4 v11, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, strAction:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 277
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "AllShareResponseHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TVControl] Response : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_RUN_BROWSER"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    const-string v8, "BUNDLE_STRING_BROWSER_OPEN"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, result:Ljava/lang/String;
    const-string v8, "BUNDLE_STRING_BROWSER_URL"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, url:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 284
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v6, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 563
    .end local v2           #result:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local v2       #result:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 289
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v6, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 293
    .end local v2           #result:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_2
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_STOP_BROWSER"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 294
    const-string v8, "BUNDLE_STRING_BROWSER_STOP"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 296
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 297
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onCloseWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 302
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onCloseWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 306
    .end local v2           #result:Ljava/lang/String;
    :cond_4
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTCURRENTURL"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 308
    const-string v8, "BUNDLE_STRING_BROWSER_URL"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .restart local v6       #url:Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 311
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 312
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v6, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserURLResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 316
    :cond_5
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 317
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v6, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserURLResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 321
    .end local v6           #url:Ljava/lang/String;
    :cond_6
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GETBROWSERMODE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 322
    const-string v8, "BUNDLE_STRING_BROWSER_MODE"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, browserMode:Ljava/lang/String;
    const-string v8, "AllShareResponseHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TVControl] BrowserMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 325
    const-string v8, "Tab"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 326
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 327
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/control/TVController$BrowserMode;->LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    sget-object v11, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10, v11}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 331
    :cond_7
    const-string v8, "Pointer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 332
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 333
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/control/TVController$BrowserMode;->POINT_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    sget-object v11, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10, v11}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 338
    :cond_8
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 339
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/control/TVController$BrowserMode;->UNKNOWN:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    sget-object v11, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10, v11}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 344
    .end local v0           #browserMode:Ljava/lang/String;
    :cond_9
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GET_DTV_INFORMATION"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 346
    const-string v8, "AllShareResponseHandler"

    const-string v9, "[TVControl] GetDTVInformation response"

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v8, "BUNDLE_STRING_DTV_INFORMATION"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, xmlResult:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 350
    new-instance v5, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;

    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {v5, v8, v7}, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;-><init>(Lcom/sec/android/allshare/TVControllerImpl;Ljava/lang/String;)V

    .line 351
    .local v5, tvInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v5, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetTVInformationResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$TVInformation;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 354
    .end local v5           #tvInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    .end local v7           #xmlResult:Ljava/lang/String;
    :cond_a
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GENERAL_UPNP_ACTION"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 366
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GET_DTV_INIT_INFO"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 368
    const-string v8, "AllShareResponseHandler"

    const-string v9, "[TVControl] GetDTVInitInformation response"

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v8, "BUNDLE_STRING_DTV_INFORMATION"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    .restart local v7       #xmlResult:Ljava/lang/String;
    new-instance v5, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;

    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {v5, v8, v7}, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;-><init>(Lcom/sec/android/allshare/TVControllerImpl;Ljava/lang/String;)V

    .line 373
    .restart local v5       #tvInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    invoke-static {v8, v5}, Lcom/sec/android/allshare/TVControllerImpl;->access$502(Lcom/sec/android/allshare/TVControllerImpl;Lcom/sec/android/allshare/control/TVController$TVInformation;)Lcom/sec/android/allshare/control/TVController$TVInformation;

    .line 374
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$500(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$TVInformation;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 375
    const-string v8, "AllShareResponseHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TVControl] Version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    invoke-static {v10}, Lcom/sec/android/allshare/TVControllerImpl;->access$500(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$TVInformation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/allshare/control/TVController$TVInformation;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_b
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    const/4 v9, 0x1

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z
    invoke-static {v8, v9}, Lcom/sec/android/allshare/TVControllerImpl;->access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z

    .line 386
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 387
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 391
    .end local v5           #tvInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;
    .end local v7           #xmlResult:Ljava/lang/String;
    :cond_c
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GOHOME_BROWSER"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 392
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_d

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 394
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 395
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoHomePageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 399
    :cond_d
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 400
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoHomePageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 404
    .end local v2           #result:Ljava/lang/String;
    :cond_e
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_REFRESH"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 406
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_f

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 408
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 409
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onRefreshWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 413
    :cond_f
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 414
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onRefreshWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 418
    .end local v2           #result:Ljava/lang/String;
    :cond_10
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_STOPPAGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 420
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_11

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 422
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 423
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onStopWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 427
    :cond_11
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 428
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onStopWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 432
    .end local v2           #result:Ljava/lang/String;
    :cond_12
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_NEXTPAGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 434
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_13

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 436
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 437
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoNextPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 441
    :cond_13
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 442
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoNextPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 446
    .end local v2           #result:Ljava/lang/String;
    :cond_14
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_PREVIOUSPAGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 448
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 450
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 451
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoPreviousPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 455
    :cond_15
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 456
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoPreviousPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 460
    .end local v2           #result:Ljava/lang/String;
    :cond_16
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMIN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 462
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_17

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 464
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 465
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomInResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 469
    :cond_17
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 470
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomInResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 474
    .end local v2           #result:Ljava/lang/String;
    :cond_18
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMOUT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 476
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_19

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 478
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 479
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomOutResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 483
    :cond_19
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 484
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomOutResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 488
    .end local v2           #result:Ljava/lang/String;
    :cond_1a
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMDEFAULT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 490
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_1b

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 492
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 493
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomDefaultResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 497
    :cond_1b
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 498
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomDefaultResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 502
    .end local v2           #result:Ljava/lang/String;
    :cond_1c
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_MODE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 504
    const-string v8, "BUNDLE_STRING_TV_IVY_RESULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .restart local v2       #result:Ljava/lang/String;
    const-string v8, "BUNDLE_STRING_BROWSER_INPUT_MODE"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, strBrowserMode:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->UNKNOWN:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    .line 509
    .local v0, browserMode:Lcom/sec/android/allshare/control/TVController$BrowserMode;
    if-eqz v4, :cond_1d

    .line 510
    const-string v8, "SetTabMode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 511
    sget-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    .line 517
    :cond_1d
    :goto_1
    if-eqz v2, :cond_1f

    const-string v8, "OK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 518
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 519
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v0, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 512
    :cond_1e
    const-string v8, "SetPointerMode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 513
    sget-object v0, Lcom/sec/android/allshare/control/TVController$BrowserMode;->POINT_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    goto :goto_1

    .line 523
    :cond_1f
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 524
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v0, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 528
    .end local v0           #browserMode:Lcom/sec/android/allshare/control/TVController$BrowserMode;
    .end local v2           #result:Ljava/lang/String;
    .end local v4           #strBrowserMode:Ljava/lang/String;
    :cond_20
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_BROWSER_SCROLLUP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 530
    const-string v8, "BUNDLE_STRING_BROWSER_URL"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 532
    .restart local v6       #url:Ljava/lang/String;
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_21

    .line 533
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$600(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/IAppControlAPI;

    move-result-object v8

    const-string v9, "KEY_REWIND"

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/allshare/IAppControlAPI;->sendRemoteControlKey(Ljava/lang/String;I)V

    .line 535
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 536
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollUpResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 540
    :cond_21
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 541
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollUpResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 545
    .end local v6           #url:Ljava/lang/String;
    :cond_22
    const-string v8, "com.sec.android.allshare.action.ACTION_CONTROL_TV_BROWSER_SCROLLDOWN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 547
    const-string v8, "BUNDLE_STRING_BROWSER_URL"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    .restart local v6       #url:Ljava/lang/String;
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_23

    .line 550
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$600(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/IAppControlAPI;

    move-result-object v8

    const-string v9, "KEY_FF"

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/allshare/IAppControlAPI;->sendRemoteControlKey(Ljava/lang/String;I)V

    .line 552
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 553
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollDownResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 557
    :cond_23
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 558
    iget-object v8, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v8}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl$3;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v10, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v8, v9, v10}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollDownResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0
.end method
