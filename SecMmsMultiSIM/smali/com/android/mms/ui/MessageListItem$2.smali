.class Lcom/android/mms/ui/MessageListItem$2;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    .line 1389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e00cc

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    .line 1394
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->startViewer()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0
.end method
