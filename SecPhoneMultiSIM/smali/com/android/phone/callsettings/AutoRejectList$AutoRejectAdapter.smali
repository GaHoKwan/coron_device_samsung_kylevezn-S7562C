.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 913
    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 914
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 915
    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 916
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 934
    move-object v1, p2

    .line 937
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    .line 938
    .local v0, item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    if-eqz v0, :cond_2

    .line 939
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v3, :cond_3

    .line 940
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 941
    new-instance v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    .line 943
    .local v2, viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 944
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 945
    const v3, 0x7f090020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 946
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 947
    const v3, 0x1010001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 948
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 953
    :goto_0
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 954
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :cond_1
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v3, :cond_4

    .line 959
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02e1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 967
    .end local v2           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    :cond_2
    :goto_1
    return-object v1

    .line 950
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    goto :goto_0

    .line 960
    :cond_4
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 961
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02e2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 962
    :cond_5
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 963
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02e3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 964
    :cond_6
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 965
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02e4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 971
    move-object v5, p2

    .line 973
    .local v5, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " rejectNum = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$2000(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 976
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    .line 978
    .local v2, item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    if-eqz v2, :cond_b

    .line 979
    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 980
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040010

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 982
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 983
    .local v3, text:Landroid/widget/TextView;
    const v8, 0x7f09002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 984
    .local v4, text_layout:Landroid/widget/LinearLayout;
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object v0, v8

    check-cast v0, Landroid/widget/CheckBox;

    .line 986
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 1028
    .local v1, checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1100(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$2000(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 1029
    if-lez v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    move-object v6, v5

    .line 1140
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    .end local v5           #v:Landroid/view/View;
    .local v6, v:Landroid/view/View;
    :goto_1
    return-object v6

    .line 1029
    .end local v6           #v:Landroid/view/View;
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v1       #checked:I
    .restart local v3       #text:Landroid/widget/TextView;
    .restart local v4       #text_layout:Landroid/widget/LinearLayout;
    .restart local v5       #v:Landroid/view/View;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1033
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v8, :cond_6

    .line 1034
    :cond_2
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04000e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1035
    new-instance v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    .line 1037
    .local v7, viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    const v8, 0x7f090027

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 1038
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 1039
    const v8, 0x7f090028

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 1040
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1041
    const v8, 0x7f090025

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 1042
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1046
    :goto_2
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1118
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 1119
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    :cond_3
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    if-nez p1, :cond_4

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1124
    :cond_4
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v8, :cond_7

    .line 1125
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02e1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1134
    :cond_5
    :goto_3
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 1135
    .restart local v1       #checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1100(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$2000(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 1136
    iget-object v9, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v1, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    move-object v6, v5

    .line 1138
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_1

    .line 1044
    .end local v1           #checked:I
    .end local v6           #v:Landroid/view/View;
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    .restart local v5       #v:Landroid/view/View;
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    .restart local v7       #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    goto/16 :goto_2

    .line 1126
    :cond_7
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 1127
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02e2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1128
    :cond_8
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 1129
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02e3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1130
    :cond_9
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 1131
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02e4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1136
    .restart local v1       #checked:I
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .end local v1           #checked:I
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    :cond_b
    move-object v6, v5

    .line 1140
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 903
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 930
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1145
    const/4 v0, 0x0

    .line 1147
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1100(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1152
    :goto_0
    return-object v0

    .line 1150
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
