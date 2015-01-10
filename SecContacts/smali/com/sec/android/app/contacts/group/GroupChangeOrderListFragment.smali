.class public Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.super Landroid/app/Fragment;
.source "GroupChangeOrderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 196
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    return-void
.end method

.method private getGroupOrderList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, groupOrderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    if-eqz v4, :cond_0

    .line 231
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 232
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v0

    .line 234
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    .line 236
    .local v1, groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v0           #count:I
    .end local v1           #groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .end local v3           #i:I
    :cond_0
    return-object v2
.end method

.method private updateDoneButton()V
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, isEnabled:Z
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v2

    .line 166
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, position:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget v3, v3, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->order:I

    if-eq v3, v1, :cond_2

    .line 168
    const/4 v0, 0x1

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v3, v0}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 176
    :cond_1
    return-void

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 103
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 112
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    .line 113
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    const v1, 0x7f04002a

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 147
    const v0, 0x7f0400fa

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v1, -0xc

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method public onDoneClicked()V
    .locals 6

    .prologue
    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v0, groupValue:Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget-object v4, v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "group_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #groupValue:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/contacts/ContactSaveService;->createChangeOrderIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 189
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getGroupOrderList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    .line 141
    const-string v0, "groupOrderList"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "groupOrderList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    .line 79
    return-void
.end method
