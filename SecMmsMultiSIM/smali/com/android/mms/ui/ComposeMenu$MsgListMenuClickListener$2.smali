.class Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

.field final synthetic val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$200(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$300(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-virtual {v3, p2}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;->buttonToCommand(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    .line 423
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 424
    return-void
.end method
