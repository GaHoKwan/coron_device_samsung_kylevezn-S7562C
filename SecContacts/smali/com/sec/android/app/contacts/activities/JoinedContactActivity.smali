.class public Lcom/sec/android/app/contacts/activities/JoinedContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinedContactActivity.java"


# instance fields
.field private isUsingTwoPanel:Z

.field private mIsMultiWindowSupported:Z

.field private mLinkedContactsCount:I

.field private mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mUnlinkOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showJoinAggregateActivity()V

    return-void
.end method

.method private setCustomActionBar()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private setLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 142
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    .local v0, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private showJoinAggregateActivity()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    const-string v1, "intentFrom"

    const-string v2, "joinedcontact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 66
    instance-of v0, p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 69
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 236
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x4

    .line 73
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v3, 0x7f04011d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 76
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "UNLINK_ONLY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    .line 77
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->isUsingTwoPanel:Z

    .line 79
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mIsMultiWindowSupported:Z

    .line 82
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 83
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 86
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-eqz v3, :cond_3

    .line 87
    const v3, 0x7f0d003c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setTitle(I)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 100
    const v3, 0x7f0902a2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    .local v1, button:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-eqz v3, :cond_1

    .line 102
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLayout()V

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v3, :cond_2

    .line 119
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090161

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 125
    :cond_2
    return-void

    .line 89
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #button:Landroid/widget/Button;
    :cond_3
    const v3, 0x7f0d029c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setTitle(I)V

    goto :goto_0

    .line 96
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setCustomActionBar()V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d029c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d029e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, action:Ljava/lang/String;
    const-string v1, "splitCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onSplitCompleted(Landroid/net/Uri;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 183
    :cond_2
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "joinFail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showDialog(I)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onJoinCompleted(Landroid/net/Uri;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->onBackPressed()V

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLayout()V

    .line 167
    :cond_0
    return-void
.end method

.method public setExplainText()V
    .locals 3

    .prologue
    .line 214
    const v1, 0x7f0902a1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, explainView:Landroid/view/View;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-nez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLinkedContactsCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 210
    iput p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    .line 211
    return-void
.end method
