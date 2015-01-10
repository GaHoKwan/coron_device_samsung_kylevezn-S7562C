.class final Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToButtonMenuClickListener"
.end annotation


# instance fields
.field private mExistInContact:Z

.field private mId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "existInContact"

    .prologue
    .line 14167
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    .line 14168
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    .line 14169
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    .line 14170
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 14173
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ToButton;

    .line 14174
    .local v2, toButton:Lcom/android/mms/ui/ToButton;
    if-nez v2, :cond_0

    .line 14208
    :goto_0
    return-void

    .line 14177
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 14207
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 14179
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    .line 14182
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v4, v5, v7, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 14183
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14184
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->moveCursorToEnd()V

    .line 14185
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V
    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13200(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_1

    .line 14188
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v4}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 14189
    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    if-nez v4, :cond_1

    .line 14190
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13302(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;

    .line 14192
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14193
    :catch_0
    move-exception v0

    .line 14194
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14197
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 14198
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14199
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.jcontacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14200
    const-string v4, "com.android.jcontacts"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14202
    :cond_2
    const/high16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14203
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 14177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
