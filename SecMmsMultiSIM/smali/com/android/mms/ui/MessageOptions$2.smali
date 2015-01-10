.class Lcom/android/mms/ui/MessageOptions$2;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$2;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$2;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$2;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$2;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$2;->val$copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    invoke-virtual {v3, p2}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;->buttonToCommand(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    .line 826
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 827
    return-void
.end method
