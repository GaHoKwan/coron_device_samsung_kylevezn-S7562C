.class Lcom/android/mms/ui/SelectMapActivity$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 192
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    return-void

    .line 187
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
