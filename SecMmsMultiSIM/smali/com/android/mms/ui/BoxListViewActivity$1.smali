.class Lcom/android/mms/ui/BoxListViewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BoxListViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListViewActivity;->registerMultiWindowBroadcastReciver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 854
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "mMultiWindowBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "mBoxList != null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 859
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "mBoxList.mEmptyView != null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 863
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "mMultiWindowBroadcastReceiver_updateEmptyViewVisibility"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$1;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$100(Lcom/android/mms/ui/BoxListViewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyViewVisibility(Z)V

    .line 868
    :cond_1
    return-void
.end method
