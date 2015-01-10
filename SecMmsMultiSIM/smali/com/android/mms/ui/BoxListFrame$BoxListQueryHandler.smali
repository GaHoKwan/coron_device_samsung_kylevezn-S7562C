.class Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 2789
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    .line 2790
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2791
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 2891
    packed-switch p1, :pswitch_data_0

    .line 2912
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2899
    :pswitch_1
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 2900
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 2901
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_0

    .line 2902
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2903
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4402(Lcom/android/mms/ui/BoxListFrame;Z)Z

    .line 2905
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 2891
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 2801
    if-nez p3, :cond_0

    .line 2887
    :goto_0
    return-void

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;I)V

    .line 2805
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onQueryComplete] END : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2810
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2811
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;)V

    .line 2814
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2818
    :cond_3
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 2867
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2872
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4302(Lcom/android/mms/ui/BoxListFrame;J)J

    .line 2885
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 2815
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4000(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4100(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_1

    .line 2824
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4200(Lcom/android/mms/ui/BoxListFrame;J)V

    goto :goto_2

    .line 2875
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4302(Lcom/android/mms/ui/BoxListFrame;J)J

    goto :goto_3

    .line 2818
    nop

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2795
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 2796
    return-void
.end method
