.class Lcom/android/mms/ui/ManageSimMessages$7;
.super Landroid/content/BroadcastReceiver;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.REFRESH_SIM_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$900(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$900(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ContextMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ContextMenu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 565
    :cond_2
    return-void
.end method
