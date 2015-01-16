.class Lcom/sec/android/app/minimode/MiniModeService$10;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V
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
    .line 1005
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1036
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v0, v1, :cond_1

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v2, v2, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1029
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1012
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1008
    return-void
.end method
