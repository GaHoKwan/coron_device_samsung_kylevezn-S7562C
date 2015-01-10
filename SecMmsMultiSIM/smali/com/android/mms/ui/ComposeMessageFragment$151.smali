.class Lcom/android/mms/ui/ComposeMessageFragment$151;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/OnPrivateIMECommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 17876
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 17880
    if-eqz p2, :cond_0

    .line 17883
    const-string v6, "imeAction:longPress"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17884
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_1

    .line 17925
    :cond_0
    :goto_0
    return v8

    .line 17887
    :cond_1
    const/16 v5, 0x30

    .line 17888
    .local v5, zeroLong:I
    const-string v6, "imeAction:longPress"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 17889
    .local v0, keyCode:I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17891
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 17892
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 17893
    .local v2, selection:I
    if-ne v5, v0, :cond_6

    if-eq v8, v2, :cond_6

    .line 17894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17895
    .local v4, strTemp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 17896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17898
    :cond_2
    move-object v3, v4

    .line 17903
    .end local v4           #strTemp:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v6, "+"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_4

    .line 17904
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 17908
    .end local v2           #selection:I
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_0

    .line 17909
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17911
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->searchShortStr(Ljava/lang/String;)Lcom/android/mms/data/ContactList;
    invoke-static {v6, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 17912
    .local v1, searchShortList:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 17913
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v6, :cond_5

    .line 17914
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6, v1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 17916
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V
    invoke-static {v6, v1, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/ContactList;Z)V

    .line 17917
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$151;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 17899
    .end local v1           #searchShortList:Lcom/android/mms/data/ContactList;
    .restart local v2       #selection:I
    :cond_6
    if-ne v5, v0, :cond_3

    if-ne v8, v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17900
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method
