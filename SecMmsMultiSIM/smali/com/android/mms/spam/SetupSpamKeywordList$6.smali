.class Lcom/android/mms/spam/SetupSpamKeywordList$6;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 288
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 290
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f0e0228

    if-ne v4, v7, :cond_2

    .line 291
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 292
    .local v0, checked:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v7

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v4

    add-int v8, v4, v2

    if-nez v0, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {v7, v8, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 293
    goto :goto_1

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/CheckBox;

    move-result-object v4

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 297
    .end local v0           #checked:Z
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    .line 315
    :cond_3
    :goto_3
    return-void

    .restart local v0       #checked:Z
    .restart local v2       #i:I
    :cond_4
    move v5, v6

    .line 295
    goto :goto_2

    .line 298
    .end local v0           #checked:Z
    .end local v2           #i:I
    :cond_5
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v4

    if-nez v4, :cond_3

    .line 300
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 302
    .local v1, headerViewsCount:I
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v4

    sub-int v5, p3, v1

    invoke-virtual {v4, v5}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v3

    .line 304
    .local v3, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 305
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 306
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 307
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v4, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$802(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 308
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->callMatchCriteriaToEditNum()V
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    goto :goto_3

    .line 305
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
