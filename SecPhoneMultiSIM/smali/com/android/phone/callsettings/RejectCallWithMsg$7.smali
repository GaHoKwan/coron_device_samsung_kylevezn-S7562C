.class Lcom/android/phone/callsettings/RejectCallWithMsg$7;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
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
    .line 426
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 431
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 432
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    .line 435
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 436
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 437
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    const/4 v2, 0x1

    .line 439
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 430
    .end local v0           #del_id:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 446
    :cond_1
    if-nez v2, :cond_3

    .line 463
    :cond_2
    :goto_1
    return-void

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const v5, 0x7f0e0355

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 452
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 454
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 461
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 462
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 456
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 457
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method
