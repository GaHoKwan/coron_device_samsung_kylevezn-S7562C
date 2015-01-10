.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "parent"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    .line 616
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 617
    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    .line 618
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 622
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onQueryComplete"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 634
    .local v8, airplane:I
    if-eqz p3, :cond_6

    if-nez v8, :cond_6

    .line 635
    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete cursor.getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->setMode(I)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 693
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 694
    return-void

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    .line 652
    iget-object v9, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v0, Lcom/android/mms/ui/SimMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v7

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/lang/String;ZI)V

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v9, v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1202(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SimMessageListAdapter;)Lcom/android/mms/ui/SimMessageListAdapter;

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_0

    .line 657
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->setMode(I)V

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_0

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_0

    .line 678
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
