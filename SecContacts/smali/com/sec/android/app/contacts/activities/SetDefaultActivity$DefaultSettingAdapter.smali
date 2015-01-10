.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSettingAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 881
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 882
    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "entry"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 981
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 982
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    .line 984
    .local v1, views:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 985
    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v2, :cond_1

    .line 986
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :goto_0
    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v2, :cond_3

    .line 1000
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :goto_1
    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1010
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1011
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1016
    :goto_2
    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 1017
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    :goto_3
    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v2, :cond_6

    .line 1024
    iget v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v2, :pswitch_data_0

    .line 1055
    :cond_0
    :goto_4
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1059
    :goto_5
    return-void

    .line 990
    :cond_1
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 995
    :cond_2
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1013
    :cond_4
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1020
    :cond_5
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1026
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1027
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1029
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_4

    .line 1033
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1034
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_4

    .line 1040
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1041
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1102(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1043
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_4

    .line 1047
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_4

    .line 1057
    :cond_6
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 945
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 946
    move-object v1, p2

    .line 947
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    .line 957
    .local v2, viewCache:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    .line 958
    return-object v1

    .line 950
    .end local v1           #v:Landroid/view/View;
    .end local v2           #viewCache:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04015d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 953
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 954
    .restart local v2       #viewCache:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
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

    .line 969
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    .line 971
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 973
    .local v1, result:Landroid/view/View;
    :goto_0
    const v3, 0x7f0901a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 974
    .local v2, titleTextView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 977
    return-object v1

    .line 971
    .end local v1           #result:Landroid/view/View;
    .end local v2           #titleTextView:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    .line 962
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 965
    .local v0, result:Landroid/view/View;
    :goto_0
    return-object v0

    .line 962
    .end local v0           #result:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    .line 907
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v1

    .line 910
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
    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 934
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 932
    :goto_0
    return-object v0

    .line 930
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 932
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 926
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
    .line 901
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
