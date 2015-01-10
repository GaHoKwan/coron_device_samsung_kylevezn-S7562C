.class Lcom/android/mms/spam/SetupSpamNumberList$6;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 389
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 391
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e0228

    if-ne v6, v7, :cond_2

    .line 392
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 393
    .local v1, checked:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_1

    .line 394
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v7

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v6

    add-int v8, v6, v4

    if-nez v1, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v8, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 396
    :cond_1
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;

    move-result-object v7

    if-nez v1, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 398
    .end local v1           #checked:Z
    .end local v4           #i:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 428
    :cond_3
    :goto_3
    return-void

    .line 396
    .restart local v1       #checked:Z
    .restart local v4       #i:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 400
    .end local v1           #checked:Z
    .end local v4           #i:I
    :cond_5
    if-nez p3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 401
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v0

    .line 402
    .local v0, bCheck:Z
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-nez v0, :cond_6

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6, v7}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 404
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v6, v6, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 405
    .local v2, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_spam_option_unknown_num"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_3

    .line 402
    .end local v2           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 411
    .end local v0           #bCheck:Z
    :cond_7
    if-eqz p3, :cond_3

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 412
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 413
    .local v3, headerViewsCount:I
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v6

    sub-int v7, p3, v3

    invoke-virtual {v6, v7}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v5

    .line 415
    .local v5, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 416
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 417
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 420
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v6, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1102(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 421
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V
    invoke-static {v6}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1200(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto/16 :goto_3

    .line 416
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method
