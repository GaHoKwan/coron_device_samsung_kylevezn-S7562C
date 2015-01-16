.class Lcom/sec/android/app/minimode/MiniModeService$16;
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
    .line 1320
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$2602(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1326
    :cond_0
    return-void
.end method
