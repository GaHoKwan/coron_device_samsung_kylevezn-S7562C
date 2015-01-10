.class public Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
.super Landroid/app/ListFragment;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mItemNameInHistory:[I


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

.field public mOptionIsChanged:Z

.field private mSortOptions:[Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd6t 0x2t 0xdt 0x7ft
        0xd7t 0x2t 0xdt 0x7ft
        0xd8t 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mOptionIsChanged:Z

    .line 309
    return-void
.end method

.method private CheckOptionsChanged()Z
    .locals 7

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 121
    .local v2, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 122
    .local v1, isMMS:Z
    const/4 v3, 0x0

    .line 124
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    if-eqz v2, :cond_0

    .line 127
    const/4 v3, 0x2

    .line 140
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 142
    const/4 v4, 0x1

    .line 145
    :goto_2
    return v4

    .line 129
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    if-eqz v2, :cond_2

    .line 133
    const/4 v3, 0x3

    goto :goto_0

    .line 134
    :cond_2
    if-eqz v1, :cond_3

    .line 135
    const/4 v3, 0x2

    goto :goto_0

    .line 137
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 140
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private linkOptionToListItem()V
    .locals 7

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 186
    .local v2, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 188
    .local v1, isMMS:Z
    const/4 v3, 0x0

    .line 190
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    if-eqz v2, :cond_0

    .line 193
    const/4 v3, 0x2

    .line 206
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 198
    :cond_1
    if-eqz v2, :cond_2

    .line 199
    const/4 v3, 0x3

    goto :goto_0

    .line 200
    :cond_2
    if-eqz v1, :cond_3

    .line 201
    const/4 v3, 0x2

    goto :goto_0

    .line 203
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 210
    .restart local v0       #i:I
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    .line 211
    return-void
.end method

.method private setAllItemCheckState(Z)V
    .locals 3
    .parameter "bCheckState"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 241
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method private setItemArrayList()V
    .locals 7

    .prologue
    const v6, 0x7f0d02d7

    .line 166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 168
    .local v2, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 172
    .local v1, isMMS:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    .line 174
    if-nez v2, :cond_0

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    const v5, 0x7f0d02d6

    if-eq v4, v5, :cond_2

    :cond_0
    if-nez v1, :cond_1

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_3

    .line 172
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_3
    new-instance v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$1;)V

    .line 179
    .local v3, item:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemNameInHistory:[I

    aget v4, v4, v0

    iput v4, v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v3           #item:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;
    :cond_4
    return-void
.end method

.method private updateAllCheckState()V
    .locals 6

    .prologue
    .line 247
    const/4 v3, 0x1

    .line 248
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 249
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 250
    .local v1, dataCount:I
    if-nez v1, :cond_1

    .line 251
    const/4 v3, 0x0

    .line 252
    const/4 v2, 0x1

    .line 264
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 265
    return-void

    .line 254
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 255
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    or-int v5, v3, v2

    if-eqz v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 257
    .local v0, checked:Z
    if-nez v0, :cond_2

    .line 258
    const/4 v3, 0x0

    .line 255
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSelectAllCheckBox()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public linkListItemToOption()V
    .locals 7

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 215
    .local v2, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 216
    .local v1, isMMS:Z
    const/4 v3, 0x0

    .line 218
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    if-eqz v2, :cond_0

    .line 221
    const/4 v3, 0x2

    .line 234
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    aput-boolean v5, v4, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 226
    :cond_1
    if-eqz v2, :cond_2

    .line 227
    const/4 v3, 0x3

    goto :goto_0

    .line 228
    :cond_2
    if-eqz v1, :cond_3

    .line 229
    const/4 v3, 0x2

    goto :goto_0

    .line 231
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 237
    .restart local v0       #i:I
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    .line 154
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnViewByItemsCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    const v0, 0x7f040052

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 89
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040051

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setItemArrayList()V

    .line 97
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040054

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mItemArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    const-string v1, "ContactHistoryViewByListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mHeaderAllCheckBox is checked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez p3, :cond_2

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 110
    .local v0, checked:Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 111
    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setAllItemCheckState(Z)V

    .line 116
    .end local v0           #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->CheckOptionsChanged()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;->onChangedOptionItems(Z)V

    .line 117
    return-void

    .restart local v0       #checked:Z
    :cond_0
    move v1, v3

    .line 110
    goto :goto_0

    :cond_1
    move v2, v3

    .line 111
    goto :goto_1

    .line 113
    .end local v0           #checked:Z
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->updateAllCheckState()V

    goto :goto_2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 6
    .parameter "extras"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 270
    .local v1, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 271
    .local v0, isMMS:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    if-eqz v1, :cond_1

    .line 274
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 288
    :goto_0
    const-string v2, "options"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 290
    .end local v0           #isMMS:Z
    .end local v1           #isPhone:Z
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkOptionToListItem()V

    .line 291
    return-void

    .line 276
    .restart local v0       #isMMS:Z
    .restart local v1       #isPhone:Z
    :cond_1
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 279
    :cond_2
    if-eqz v1, :cond_3

    .line 280
    const/4 v2, 0x3

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 281
    :cond_3
    if-eqz v0, :cond_4

    .line 282
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0

    .line 284
    :cond_4
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    goto :goto_0
.end method

.method public setSelectAllCheckBox(Z)V
    .locals 1
    .parameter "boolean1"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 303
    return-void
.end method

.method public setSortOptions([Z)V
    .locals 0
    .parameter "booleanArray"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->mSortOptions:[Z

    .line 299
    return-void
.end method
