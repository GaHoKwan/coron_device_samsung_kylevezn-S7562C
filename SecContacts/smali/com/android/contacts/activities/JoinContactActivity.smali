.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"


# static fields
.field public static MAX_JOINED_CONTACT_COUNT:I


# instance fields
.field private isUsingTwoPanel:Z

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mIntentFrom:Ljava/lang/String;

.field private mIsMultiWindowSupported:Z

.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mTargetContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_SetLinkCountMaxAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_SetLinkCountMaxAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/JoinContactActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/JoinContactActivity;->joinAggregate(J)V

    return-void
.end method

.method private joinAggregate(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 263
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "mainlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/android/contacts/activities/PeopleActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "detailview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "joinedcontact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 276
    :cond_2
    const-string v0, "JoinContactActivity"

    const-string v1, "do not join contact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCustomActionBar()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method private setLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 209
    iget-boolean v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 222
    .local v0, width:I
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 243
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/JoinContactListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 103
    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    .line 111
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v3, 0x7f040117

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    .line 113
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 115
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 121
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "intentFrom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    .line 122
    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 123
    iget-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 124
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v3, "JoinContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing required extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 155
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 118
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setCustomActionBar()V

    goto :goto_0

    .line 132
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->isUsingTwoPanel:Z

    .line 134
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIsMultiWindowSupported:Z

    .line 137
    iget-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_3

    .line 138
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setLayout()V

    .line 145
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    if-nez v3, :cond_4

    .line 146
    new-instance v3, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v3}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 148
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090161

    iget-object v5, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 152
    :cond_4
    iget-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v4, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 286
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 239
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setLayout()V

    .line 203
    :cond_0
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    .line 170
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$2;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 197
    return-void
.end method

.method public showContactsUnavailableFragment()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setNoContactType(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090161

    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 255
    return-void
.end method
