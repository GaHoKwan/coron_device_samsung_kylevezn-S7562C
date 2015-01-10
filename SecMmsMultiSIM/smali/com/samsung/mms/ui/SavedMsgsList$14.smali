.class Lcom/samsung/mms/ui/SavedMsgsList$14;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/SavedMsgsList;->ShowRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 713
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->fileAlreadyExists(Z)Z
    invoke-static {v0, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1700(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->renameFile(Z)V
    invoke-static {v0, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;Z)V

    .line 717
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v0, v0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v0, v0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$14;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
