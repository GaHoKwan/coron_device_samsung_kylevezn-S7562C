.class Lcom/android/mms/ui/ComposeMessageFragment$88;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mResult:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 9262
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 9315
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 9322
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->mResult:I

    const v2, 0x7f0a01b5

    const/4 v3, 0x0

    const/4 v4, 0x3

    move v6, v5

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9000(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V

    .line 9323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 9324
    return-void

    :cond_1
    move v0, v5

    .line 9317
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 9266
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 9273
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 9275
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 9276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupSnippetText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8802(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 9280
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateCounter(Ljava/lang/CharSequence;III)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;III)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->mResult:I

    .line 9281
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 9284
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 9310
    return-void
.end method
