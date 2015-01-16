.class Lcom/sec/android/app/minimode/MiniModeService$15;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
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
    .line 1312
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$15;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1317
    :cond_0
    return-void
.end method
