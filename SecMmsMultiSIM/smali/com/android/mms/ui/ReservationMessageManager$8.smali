.class Lcom/android/mms/ui/ReservationMessageManager$8;
.super Landroid/content/BroadcastReceiver;
.source "ReservationMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->registerMultiWindowBroadcastReciver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$1000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$1000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1100(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1200(Lcom/android/mms/ui/ReservationMessageManager;Z)V

    .line 1314
    :cond_0
    return-void
.end method
