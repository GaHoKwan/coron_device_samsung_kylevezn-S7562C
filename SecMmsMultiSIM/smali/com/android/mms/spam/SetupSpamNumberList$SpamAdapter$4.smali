.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field final synthetic val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1058
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1059
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 1061
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e0235

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1063
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1065
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1066
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_spam_option_unknown_num"

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1067
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1081
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    return-void

    .line 1060
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1071
    :cond_2
    const/4 v2, 0x0

    .line 1072
    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1073
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1078
    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v3, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1102(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 1079
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1200(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto :goto_1

    .line 1072
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
