.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.super Landroid/app/Fragment;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;,
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 92
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addAllGroup()V
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 175
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 5
    .parameter "isEmpty"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f090034

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 190
    goto :goto_1

    :cond_3
    move v3, v2

    .line 191
    goto :goto_2
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 423
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 424
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 426
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 427
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 431
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeAllGroup()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    return-void
.end method

.method private removeGroup(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 6

    .prologue
    const v5, 0x7f0900f8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 196
    .local v1, total:I
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, selectedItemCount:I
    if-ne v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 204
    :goto_0
    if-nez v0, :cond_1

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onTitleUpdated(I)V

    .line 212
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    invoke-interface {v2, v4}, Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getGroupsToDelete()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    sput-object p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 113
    const v0, 0x7f040105

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    .line 115
    const v0, 0x7f04014f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->dismissProgress()V

    .line 420
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public onDoneClicked()V
    .locals 0

    .prologue
    .line 441
    invoke-static {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    .line 442
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 136
    const-string v3, "GroupDeleteListFragment"

    const-string v4, "can not work while loading."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 140
    .local v1, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeAllGroup()V

    .line 156
    .end local v1           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->notifyDataSetChanged()V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    goto :goto_0

    .line 143
    .restart local v1       #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addAllGroup()V

    goto :goto_1

    .line 147
    .end local v1           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    .line 148
    .local v0, adjPosition:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeGroup(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addGroup(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    return-void
.end method

.method public setActionBarUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;

    .line 96
    return-void
.end method

.method public setGroupsToDelete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, mGroupsToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 220
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    goto :goto_0
.end method
