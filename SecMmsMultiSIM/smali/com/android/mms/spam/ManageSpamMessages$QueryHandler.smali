.class Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSpamMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/spam/ManageSpamMessages;

.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;Landroid/content/ContentResolver;Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "parent"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    .line 489
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 490
    iput-object p3, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->mParent:Lcom/android/mms/spam/ManageSpamMessages;

    .line 491
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 495
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "onQueryComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-nez p3, :cond_0

    .line 498
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    if-eqz p3, :cond_6

    .line 501
    const-string v0, "Mms/ManageSpamMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V
    invoke-static {v0, v6}, Lcom/android/mms/spam/ManageSpamMessages;->access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    .line 506
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$500(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$500(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mMode:I
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$000(Lcom/android/mms/spam/ManageSpamMessages;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    .line 513
    iget-object v8, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    new-instance v0, Lcom/android/mms/spam/SpamMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->mParent:Lcom/android/mms/spam/ManageSpamMessages;

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mMode:I
    invoke-static {v2}, Lcom/android/mms/spam/ManageSpamMessages;->access$000(Lcom/android/mms/spam/ManageSpamMessages;)I

    move-result v7

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/spam/SpamMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/lang/String;ZI)V

    #setter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v8, v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$302(Lcom/android/mms/spam/ManageSpamMessages;Lcom/android/mms/spam/SpamMessageListAdapter;)Lcom/android/mms/spam/SpamMessageListAdapter;

    .line 519
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;
    invoke-static {v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$600(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$700(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 526
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V
    invoke-static {v0, v4}, Lcom/android/mms/spam/ManageSpamMessages;->access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    goto :goto_0

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mMode:I
    invoke-static {v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$000(Lcom/android/mms/spam/ManageSpamMessages;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->setMode(I)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V
    invoke-static {v0, v4}, Lcom/android/mms/spam/ManageSpamMessages;->access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    goto :goto_0

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V
    invoke-static {v0, v6}, Lcom/android/mms/spam/ManageSpamMessages;->access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    goto/16 :goto_0

    .line 545
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$500(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$500(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    sget-boolean v0, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v0, :cond_7

    .line 550
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v0}, Lcom/android/mms/spam/ManageSpamMessages;->refreshSelectionList()V

    goto/16 :goto_1

    .line 553
    :cond_7
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->checkStatusSelectAll(Landroid/database/Cursor;)Z
    invoke-static {v0, p3}, Lcom/android/mms/spam/ManageSpamMessages;->access$800(Lcom/android/mms/spam/ManageSpamMessages;Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$200(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
