.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private spamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 901
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/spam/SpamFilter$SpamFilterData;>;"
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 902
    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    .line 903
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 904
    iput-object p3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    .line 905
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 921
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    .line 922
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 924
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 926
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_1

    .line 927
    if-nez v1, :cond_0

    .line 928
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030095

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 930
    :cond_0
    const v3, 0x7f0e023a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    .line 932
    const v3, 0x7f0e0239

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 933
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 935
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 936
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 937
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :cond_1
    :goto_0
    return-object v1

    .line 939
    :cond_2
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0e0235

    const v7, 0x7f0e0103

    const/16 v6, 0x8

    .line 959
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    .line 960
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 962
    .local v1, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoreject idx : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rejectNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 964
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 966
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_4

    .line 967
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 968
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030092

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 969
    const v3, 0x7f0e00fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 970
    const v3, 0x7f0e0234

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 971
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 972
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1101
    :cond_0
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1102
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1103
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1110
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    if-nez v3, :cond_8

    .line 1111
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0a0396

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1120
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 1121
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1123
    :cond_4
    return-object v1

    .line 1017
    :cond_5
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030093

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1018
    const v3, 0x7f0e0237

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    .line 1021
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 1022
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1023
    const v3, 0x7f0e0236

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 1026
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1027
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1048
    :cond_6
    const v3, 0x7f0e0100

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    const v3, 0x7f0e0238

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1105
    :cond_7
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1112
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1113
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1114
    :cond_9
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 1115
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0a0398

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1116
    :cond_a
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1117
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0a0399

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1127
    const/4 v0, 0x0

    .line 1129
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1134
    :goto_0
    return-object v0

    .line 1132
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
