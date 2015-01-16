.class Lcom/sec/android/app/minimode/MiniModeService$18;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V
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
    .line 1500
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3000(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$3002(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MiniModeService;->onMaximized()Z

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$3700(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1519
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1525
    :cond_2
    return-void
.end method
