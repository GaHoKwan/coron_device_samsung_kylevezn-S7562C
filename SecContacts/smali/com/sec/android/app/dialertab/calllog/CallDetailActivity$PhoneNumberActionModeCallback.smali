.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 3163
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3171
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3166
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 3168
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 3163
    nop

    :pswitch_data_0
    .packed-switch 0x7f09038a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3153
    :goto_0
    return v0

    .line 3152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3102(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 3180
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3158
    const/4 v0, 0x1

    return v0
.end method
