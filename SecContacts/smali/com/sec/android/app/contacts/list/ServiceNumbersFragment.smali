.class public Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
.super Landroid/app/ListFragment;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field protected mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 294
    :cond_0
    return-void

    .line 290
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private query()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    const-string v0, "[ServiceNumbersFragment]"

    const-string v3, "query: starting an async query"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, SIM_ZERO:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 228
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "SerivceNumbersTab"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 230
    .local v9, SimId:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v13

    .line 231
    .local v13, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v13, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v13, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v12, v14

    .line 233
    .local v12, isSimAvailable:Z
    :goto_0
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v13, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v13, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v11, v14

    .line 236
    .local v11, isSim2Available:Z
    :goto_1
    if-nez v12, :cond_2

    if-eqz v11, :cond_2

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    sget-object v3, Lcom/android/contacts/util/Constants;->SDN2_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_2
    invoke-direct {p0, v14}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->displayProgress(Z)V

    .line 282
    return-void

    .end local v11           #isSim2Available:Z
    .end local v12           #isSimAvailable:Z
    :cond_0
    move v12, v1

    .line 231
    goto :goto_0

    .restart local v12       #isSimAvailable:Z
    :cond_1
    move v11, v1

    .line 233
    goto :goto_1

    .line 239
    .restart local v11       #isSim2Available:Z
    :cond_2
    if-nez v9, :cond_3

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    sget-object v3, Lcom/android/contacts/util/Constants;->SDN_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    sget-object v3, Lcom/android/contacts/util/Constants;->SDN2_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 148
    const v0, 0x7f04015a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    .line 158
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    .line 160
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04015b

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 198
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 199
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 300
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 302
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 304
    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, numberString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 316
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #numberString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->query()V

    .line 176
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 190
    :cond_0
    return-void
.end method
