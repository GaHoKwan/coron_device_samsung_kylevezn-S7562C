.class Lcom/sec/android/app/minimode/MiniModeService$23;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V
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
    .line 1976
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1979
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$4900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1980
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1981
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1985
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 1987
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1988
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService$23;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v3, v3, Lcom/sec/android/app/minimode/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1991
    return-void
.end method
