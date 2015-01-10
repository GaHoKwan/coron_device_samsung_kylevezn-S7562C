.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;
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
    .line 1027
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1029
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1030
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 1031
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%08X"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 1032
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 1033
    const v2, 0x7f0e0235

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1035
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1037
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1038
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1039
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_spam_option_unknown_num"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1045
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 1032
    goto :goto_0

    .line 1042
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v5

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateSpamNumber(Ljava/lang/String;ZI)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2000(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;ZI)V

    goto :goto_1
.end method
