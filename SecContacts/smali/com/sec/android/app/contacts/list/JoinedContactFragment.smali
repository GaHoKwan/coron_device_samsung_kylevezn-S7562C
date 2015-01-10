.class public Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.super Landroid/app/ListFragment;
.source "JoinedContactFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;,
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static mLinkedContactsCount:I

.field private static mSelectedContactUri:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

.field private mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

.field private mJustCreated:Z

.field private mList:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return p0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/net/Uri;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->doSplitContactAction(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method private doSplitContactAction(Landroid/net/Uri;J)Z
    .locals 5
    .parameter "contactLookupUri"
    .parameter "targetRawContactId"

    .prologue
    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 207
    .local v0, dialog:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p2, p3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setContactId(JJ)V

    .line 208
    invoke-virtual {v0, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    const/4 v2, 0x1

    .line 218
    :cond_0
    return v2

    .line 212
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "JoinedContact"

    const-string v3, "Error occured : "

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 153
    const-string v0, "JoinedContact"

    const-string v3, "JoinedContact startQuery"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v4, "raw_contacts2"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 110
    .local v0, data:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 111
    .local v2, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    sput-object v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 116
    :cond_0
    if-nez v2, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    .line 127
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mJustCreated:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const v0, 0x7f04011b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    .line 136
    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 398
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 401
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 169
    return-void
.end method

.method public onSplitCompleted(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 392
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 394
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 395
    return-void
.end method

.method public onSplitContactConfirmed(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x1

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "splitCompleted"

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 389
    return-void
.end method
