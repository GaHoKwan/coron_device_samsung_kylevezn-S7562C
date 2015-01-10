.class Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    #getter for: Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->access$2300(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    #getter for: Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->access$2300(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I

    move-result-object v2

    aget v2, v2, v0

    #calls: Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(I)I
    invoke-static {v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$2400(Lcom/android/mms/ui/ManageSimMessages;I)I

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$2500(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v4, v4, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$2500(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1157
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$2600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1158
    return-void
.end method
