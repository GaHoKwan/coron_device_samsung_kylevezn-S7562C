.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Object;
.source "ShutdownActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;

.field final synthetic val$systemRequest:Z


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    iput-boolean p2, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v0}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v2}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0
.end method
