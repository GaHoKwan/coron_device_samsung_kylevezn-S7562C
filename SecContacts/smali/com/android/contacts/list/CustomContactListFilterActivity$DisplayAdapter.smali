.class public final Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 693
    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 694
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 695
    invoke-static {p2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 696
    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 894
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 895
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 897
    .local v1, validChild:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 898
    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 900
    :goto_1
    return-object v2

    .line 895
    .end local v1           #validChild:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 900
    .restart local v1       #validChild:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 906
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 907
    .local v0, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 909
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 911
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 820
    if-nez p4, :cond_0

    .line 821
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04006c

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 825
    :cond_0
    const v10, 0x1020014

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 826
    .local v8, text1:Landroid/widget/TextView;
    const v10, 0x1020015

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 827
    .local v9, text2:Landroid/widget/TextView;
    const v10, 0x1020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 829
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v10, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 830
    .local v1, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 831
    .local v3, child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v3, :cond_8

    .line 833
    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v5

    .line 834
    .local v5, groupVisible:Z
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 835
    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 838
    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v7

    .line 839
    .local v7, systemId:Ljava/lang/String;
    if-nez v7, :cond_7

    .line 840
    const-string v10, "My Contacts"

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 841
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, groupTitle:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    .end local v5           #groupVisible:Z
    .end local v7           #systemId:Ljava/lang/String;
    :goto_1
    const v10, 0x7f0901aa

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 869
    .local v6, selectableView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 870
    new-instance v10, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$1;

    invoke-direct {v10, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$1;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 877
    new-instance v10, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;

    invoke-direct {v10, p0, v3, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    :cond_1
    return-object p4

    .line 842
    .end local v6           #selectableView:Landroid/view/View;
    .restart local v5       #groupVisible:Z
    .restart local v7       #systemId:Ljava/lang/String;
    :cond_2
    const-string v10, "ICE"

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 843
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto :goto_0

    .line 844
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    :cond_3
    const-string v10, "Friends"

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 845
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto :goto_0

    .line 846
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    :cond_4
    const-string v10, "Family"

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 847
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 848
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    :cond_5
    const-string v10, "Coworkers"

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 849
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 851
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    :cond_6
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 854
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    :cond_7
    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #groupTitle:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 860
    .end local v4           #groupTitle:Ljava/lang/CharSequence;
    .end local v5           #groupVisible:Z
    .end local v7           #systemId:Ljava/lang/String;
    :cond_8
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 861
    const v10, 0x7f0d0147

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 862
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 918
    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 919
    .local v0, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 920
    .local v1, anyHidden:Z
    :goto_0
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1           #anyHidden:Z
    :cond_0
    move v1, v3

    .line 919
    goto :goto_0

    .restart local v1       #anyHidden:Z
    :cond_1
    move v2, v3

    .line 920
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 933
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 938
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 714
    if-nez p3, :cond_0

    .line 715
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04006b

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 719
    :cond_0
    const v9, 0x1020014

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 720
    .local v7, text1:Landroid/widget/TextView;
    const v9, 0x1020015

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 722
    .local v8, text2:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 724
    .local v2, account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    .line 728
    .local v3, accountType:Lcom/android/contacts/model/AccountType;
    const v9, 0x7f0901a9

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 730
    .local v4, iv:Landroid/widget/ImageView;
    if-eqz v4, :cond_2

    .line 731
    move-object/from16 v0, p4

    instance-of v9, v0, Landroid/widget/ExpandableListView;

    if-eqz v9, :cond_2

    move-object/from16 v5, p4

    .line 732
    check-cast v5, Landroid/widget/ExpandableListView;

    .line 734
    .local v5, listView:Landroid/widget/ExpandableListView;
    if-eqz v5, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 736
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const v12, 0x101006f

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 740
    .local v1, a:Landroid/content/res/TypedArray;
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 741
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    :goto_0
    if-eqz p2, :cond_6

    .line 748
    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$500()[I

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 752
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 756
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v5           #listView:Landroid/widget/ExpandableListView;
    :cond_2
    const-string v9, "vnd.sec.contact.phone"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 757
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0d014b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :goto_2
    iget-object v9, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v9, :cond_b

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_3
    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 798
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$600()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :goto_4
    return-object p3

    .line 743
    .restart local v1       #a:Landroid/content/res/TypedArray;
    .restart local v5       #listView:Landroid/widget/ExpandableListView;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 750
    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 758
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v5           #listView:Landroid/widget/ExpandableListView;
    :cond_7
    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 763
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 764
    .local v6, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 775
    .end local v6           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_8
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 777
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    const-string v10, "vnd.sec.contact.sim2"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 778
    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 784
    :cond_9
    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 785
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 786
    .restart local v6       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 788
    .end local v6           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_a
    iget-object v9, v2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 794
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 811
    :cond_c
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 948
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 700
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 701
    return-void
.end method
