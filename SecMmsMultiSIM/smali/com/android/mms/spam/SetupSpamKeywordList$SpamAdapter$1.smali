.class Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

.field final synthetic val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 823
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v3

    if-nez v3, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1800(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V

    .line 825
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%08X"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1800(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V

    .line 826
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 827
    const v1, 0x7f0e0235

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 829
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 830
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->updateSpamKeyword(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1900(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    .line 832
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 826
    goto :goto_0
.end method