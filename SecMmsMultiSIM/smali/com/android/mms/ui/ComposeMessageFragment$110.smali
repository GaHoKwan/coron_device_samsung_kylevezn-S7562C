.class Lcom/android/mms/ui/ComposeMessageFragment$110;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12298
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 12301
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v4, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 12302
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "text"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12305
    .local v2, smiley:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 12306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12308
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12310
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12100(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 12331
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 12332
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12333
    :cond_1
    return-void

    .line 12311
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12312
    const/4 v0, 0x0

    .line 12313
    .local v0, currentSubjectLength:I
    const/4 v3, 0x0

    .line 12315
    .local v3, smileyLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12316
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getByteSize(Ljava/lang/String;)I

    move-result v0

    .line 12317
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getByteSize(Ljava/lang/String;)I

    move-result v3

    .line 12324
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v5

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z
    invoke-static {v4, v0, v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12200(Lcom/android/mms/ui/ComposeMessageFragment;III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12325
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12100(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto :goto_0

    .line 12319
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    .line 12320
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 12328
    .end local v0           #currentSubjectLength:I
    .end local v3           #smileyLength:I
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$110;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method