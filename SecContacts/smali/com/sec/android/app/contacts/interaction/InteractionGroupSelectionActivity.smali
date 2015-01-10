.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private final GROUPS_PICKER_TAG:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field private mCurrentCount:I

.field private mDoneButtonClickable:Z

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsGroupConference:Z

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field private mIsSendingMSG:Z

.field private mIsTablet:Z

.field private mLimitedCount:I

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    .line 130
    const-string v0, "groupsPickerTag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->GROUPS_PICKER_TAG:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    .line 519
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 9
    .parameter "selectedCount"

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 246
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    const/16 v5, 0x122

    if-ne v4, v5, :cond_0

    .line 247
    const v4, 0x7f0d001d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 279
    .end local v2           #title:Ljava/lang/String;
    .local v3, title:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 251
    .end local v3           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v4, :cond_1

    .line 252
    if-lez p1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03fc

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 255
    .end local v2           #title:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 259
    .end local v3           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, groupTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, systemId:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    const-string v2, ""

    :cond_2
    move-object v3, v2

    .line 279
    .end local v2           #title:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v3           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_3
    const-string v4, "ICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    const v4, 0x7f0d0285

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 269
    :cond_4
    const v4, 0x7f0d0284

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 272
    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    .line 486
    const-string v0, "InteractionGroupSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mACtion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v8

    .line 491
    .local v8, limitedMmsCount:I
    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    const-string v0, "SelectMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    .line 493
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 494
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 495
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 496
    const-string v0, "actionCode"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 497
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    .line 501
    :goto_0
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    .line 502
    const-string v0, "isGroupConference"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    .line 510
    :cond_0
    :goto_1
    return-void

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    goto :goto_0

    .line 504
    :cond_2
    const-string v0, "intent.action.INTERACTION_ICE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    .line 506
    const/16 v0, 0x122

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 507
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-wide/16 v4, 0x0

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto :goto_1
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 4
    .parameter "disable"

    .prologue
    const/4 v3, 0x3

    .line 414
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 415
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    .line 417
    .local v1, state:I
    if-eqz p1, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->isVideoCallActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    .line 420
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 421
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    .line 425
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 800
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "phone_data_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/emergency/personal"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    .line 805
    return-void
.end method

.method private isVideoCallActive()Z
    .locals 6

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, mIsVideoCallActive:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 433
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 434
    const-string v3, "InteractionGroupSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isVideoCallActive() :  phone.isIdle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone.getActivePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 442
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "InteractionGroupSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoCallActive..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1

    .line 435
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 438
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "InteractionGroupSelectionActivity"

    const-string v4, "Connection Failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 809
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, keyStrings:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, dataStrings:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v2, resultString:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_0

    .line 816
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 817
    .local v3, shareUri:Landroid/net/Uri;
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .end local v3           #shareUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 822
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 823
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 828
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x21

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    .line 830
    :cond_2
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 832
    :cond_3
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_4

    .line 833
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 841
    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 449
    .local v2, result:Z
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 450
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 451
    if-eqz p2, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v2

    .line 464
    .end local v1           #mWindowManager:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return v2

    .line 454
    .restart local v1       #mWindowManager:Landroid/view/IWindowManager;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 461
    .end local v1           #mWindowManager:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFragment()V
    .locals 4

    .prologue
    .line 468
    const-string v2, "InteractionGroupSelectionActivity"

    const-string v3, "updateFragment"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 471
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 473
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    :cond_0
    const-string v2, "InteractionGroupSelectionActivity"

    const-string v3, "mInteractionGroupMemberPickerFragment null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureListFragment()V

    .line 478
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchQuery()V

    .line 480
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 227
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 230
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 236
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionbartitle:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-object v0
.end method

.method public configureListFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 286
    const-string v1, "InteractionGroupSelectionActivity"

    const-string v2, "configureListFragment"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMode(I)V

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMMSinformation(III)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSendingMSG(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toolitem"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, toolItem:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 403
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 410
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 405
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 406
    .local v0, action:I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 144
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setupActionListener()V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsMultiWindowSupported:Z

    .line 172
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 173
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 176
    :cond_0
    if-eqz p1, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    .line 177
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-eqz v3, :cond_5

    .line 178
    const-string v3, "actionCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    .line 179
    const-string v3, "doneButtonClickable"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    .line 180
    const-string v3, "mSelectedCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    .line 182
    const-string v3, "FromMMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    .line 188
    :goto_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 190
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v5, 0x122

    if-ne v3, v5, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 200
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 202
    const v3, 0x7f040059

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setContentView(I)V

    .line 204
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v3, :cond_2

    .line 205
    const v3, 0x7f090166

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setLayoutAttribute(IZ)V

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 212
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 214
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const-string v3, "groupsPickerTag"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-nez v3, :cond_3

    .line 217
    new-instance v3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 218
    const v3, 0x7f090161

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const-string v5, "groupsPickerTag"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 221
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureListFragment()V

    .line 224
    return-void

    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_4
    move v3, v5

    .line 176
    goto/16 :goto_0

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "FromMMS"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 313
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 314
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 316
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 344
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 336
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    goto :goto_0

    .line 339
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    goto :goto_0

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 396
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 321
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 328
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 386
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->updateFragment()V

    .line 390
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 153
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const-string v1, "actionCode"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v1, "doneButtonClickable"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v1, "mSelectedCount"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "InteractionGroupSelectionActivity"

    const-string v2, "onSaveInstanceState : IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setLayoutAttribute(IZ)V

    .line 352
    :cond_0
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 675
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 677
    .local v7, cursor:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 678
    .local v9, ididx:I
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 680
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v15, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v14, result:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 684
    .local v8, id:Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 686
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 691
    .local v13, phonecursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 693
    .local v12, numidx:I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 694
    .local v11, num:Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    if-eqz v11, :cond_0

    .line 698
    .end local v11           #num:Ljava/lang/String;
    .end local v12           #numidx:I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 701
    .end local v13           #phonecursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 703
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v10, intent:Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 706
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 710
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 711
    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 714
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 851
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 852
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    .line 854
    return-void
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v10

    const/16 v11, 0x122

    if-ne v10, v11, :cond_1

    .line 721
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 722
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 723
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 724
    .local v4, line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, dataStrings:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v7, v0, v10

    .line 727
    .local v7, phoneDataId:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v6, v0, v10

    .line 728
    .local v6, number:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v5, v0, v10

    .line 729
    .local v5, name:Ljava/lang/String;
    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .end local v0           #dataStrings:[Ljava/lang/String;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #phoneDataId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v9, resultData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 739
    .restart local v4       #line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ";"

    invoke-direct {p0, v4, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 741
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 744
    .end local v4           #line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #result:Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 745
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "result"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 746
    const-string v10, "datatype"

    const-string v11, "contact"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendActionIntent(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 753
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 756
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 757
    const-string v5, ";"

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_2

    .line 761
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 762
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 794
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    .line 795
    return-void

    .line 764
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    .line 765
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 766
    const-string v0, "videocall"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    const-string v2, "smsto"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 773
    const-string v1, "sendto"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_6

    .line 777
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 778
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 779
    const-string v0, ""

    aput-object v0, v4, v2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 778
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 783
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 787
    :cond_6
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0x125

    if-ne v0, v1, :cond_1

    .line 788
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 790
    const-string v2, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 671
    :cond_0
    return-void

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setLayoutAttribute(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "isCreated"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 380
    return-void

    .line 361
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 364
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 366
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 367
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f04006e

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 370
    .end local v0           #param:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 372
    .restart local v0       #param:Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 374
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 517
    :cond_0
    return-void
.end method
