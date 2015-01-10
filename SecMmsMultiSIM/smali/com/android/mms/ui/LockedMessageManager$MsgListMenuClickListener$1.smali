.class Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;

.field final synthetic val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-virtual {v3, p2}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;->buttonToCommand(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    .line 1832
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1833
    return-void
.end method
