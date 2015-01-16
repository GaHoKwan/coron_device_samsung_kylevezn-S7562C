.class Lcom/sec/android/app/minimode/MiniModeService$12;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 12
    .parameter "hasWindowFocus"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v10, -0x2710

    .line 1098
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1099
    if-eqz p1, :cond_2

    .line 1100
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1102
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1103
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1109
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onWindowFocusChanged(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1110
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z
    invoke-static {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1502(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1111
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1112
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6, v11}, Lcom/sec/android/app/minimode/MiniModeService;->access$1602(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1239
    :cond_1
    :goto_1
    return-void

    .line 1105
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1117
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z
    invoke-static {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1502(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1121
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1122
    .local v0, displayRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1126
    .local v3, miniAppRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1127
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v10, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v6, v10, :cond_9

    .line 1146
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6, v11}, Lcom/sec/android/app/minimode/MiniModeService;->access$1602(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1156
    :goto_3
    if-eqz p1, :cond_d

    .line 1158
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 1160
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$2000(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 1161
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2000(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1164
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$2100(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1165
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1166
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1206
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_8

    .line 1207
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1209
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1211
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1214
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_7

    .line 1218
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_8

    .line 1221
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1230
    :cond_8
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1232
    :catch_0
    move-exception v1

    .line 1233
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not attached to window manager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1131
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_9
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1133
    :cond_a
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$1700()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1134
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 1136
    .local v5, v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1137
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1144
    .end local v5           #v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :goto_5
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2

    .line 1139
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v6, v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->access$1900(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1141
    .local v4, nextMiniAppRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1142
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 1148
    .end local v4           #nextMiniAppRect:Landroid/graphics/Rect;
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 1149
    .restart local v5       #v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1150
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1152
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_3

    .line 1177
    .end local v5           #v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2002(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1178
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1180
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1182
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$2100(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1183
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1184
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1185
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1189
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1190
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$402(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1192
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1194
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$12;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto/16 :goto_4
.end method
