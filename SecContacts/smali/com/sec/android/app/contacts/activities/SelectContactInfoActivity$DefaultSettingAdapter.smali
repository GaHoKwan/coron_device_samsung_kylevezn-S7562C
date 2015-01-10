.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSettingAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/app/ListActivity;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 874
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 875
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 876
    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 975
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 977
    .local v0, views:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    iget-object v1, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    :goto_0
    iget-object v1, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1006
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget v3, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    #calls: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$500(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/widget/TextView;I)V

    .line 1007
    return-void

    .line 981
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$300(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$300(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 994
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 996
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 998
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1000
    :cond_5
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1003
    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 939
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 940
    move-object v1, p2

    .line 941
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 951
    .local v2, viewCache:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    .line 952
    return-object v1

    .line 944
    .end local v1           #v:Landroid/view/View;
    .end local v2           #viewCache:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040151

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 947
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    invoke-direct {v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;-><init>(Landroid/view/View;)V

    .line 948
    .restart local v2       #viewCache:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 963
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;

    .line 965
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 967
    .local v1, result:Landroid/view/View;
    :goto_0
    const v3, 0x7f0901a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 968
    .local v2, titleTextView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 971
    return-object v1

    .line 965
    .end local v1           #result:Landroid/view/View;
    .end local v2           #titleTextView:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04011f

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 956
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 959
    .local v0, result:Landroid/view/View;
    :goto_0
    return-object v0

    .line 956
    .end local v0           #result:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 900
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 901
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getId()J

    move-result-wide v1

    .line 904
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 926
    :goto_0
    return-object v0

    .line 924
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 926
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 915
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
