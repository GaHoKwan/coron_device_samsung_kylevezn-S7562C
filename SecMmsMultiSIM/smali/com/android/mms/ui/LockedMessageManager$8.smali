.class Lcom/android/mms/ui/LockedMessageManager$8;
.super Landroid/content/BroadcastReceiver;
.source "LockedMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->registerMultiWindowBroadcastReciver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$1000(Lcom/android/mms/ui/LockedMessageManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$1000(Lcom/android/mms/ui/LockedMessageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1100(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1200(Lcom/android/mms/ui/LockedMessageManager;Z)V

    .line 1459
    :cond_0
    return-void
.end method
