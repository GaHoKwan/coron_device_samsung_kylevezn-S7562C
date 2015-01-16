.class Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;
.super Landroid/os/Handler;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 198
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 258
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 201
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 202
    .local v2, myCN:Landroid/content/ComponentName;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_1

    .line 205
    .local v1, hasFocus:Z
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;->onMiniAppFocusChanged(Landroid/content/ComponentName;Z)Z

    goto :goto_0

    .line 202
    .end local v1           #hasFocus:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 213
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #myCN:Landroid/content/ComponentName;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 214
    .local v3, x:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 217
    .local v4, y:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;->onMoveRequested(II)Z

    goto :goto_0

    .line 225
    .end local v3           #x:I
    .end local v4           #y:I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 228
    .restart local v0       #cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;->onCloseRequested(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 236
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 239
    .restart local v0       #cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$400(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 240
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$400(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;->onShowRequested(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 247
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 250
    .restart local v0       #cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$500(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$500(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;->onHideRequested(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
