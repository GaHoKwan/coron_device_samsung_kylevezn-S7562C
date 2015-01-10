.class Lcom/android/phone/callsettings/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x3

    .line 381
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$500(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v0, p3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$602(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 384
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$702(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 386
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 387
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$802(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    const v5, 0x7f0e02f0

    .line 394
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const v5, 0x7f0e073e

    .line 397
    :cond_0
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const-string v1, "REMIND_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-class v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-class v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    goto :goto_0
.end method
