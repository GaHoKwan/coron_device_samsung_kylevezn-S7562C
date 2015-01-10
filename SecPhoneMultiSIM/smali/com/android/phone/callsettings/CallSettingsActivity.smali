.class public Lcom/android/phone/callsettings/CallSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CallSettingsActivity.java"


# instance fields
.field protected mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallSettingsActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private checkAutoReject()Z
    .locals 2

    .prologue
    .line 484
    const-string v0, "com.android.phone.callsettings.AutoRejectList"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone.callsettings.AutoRejectVideoCallList"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    const-string v0, "checkAutoReject true"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    .line 488
    :cond_1
    const-string v0, "checkAutoReject false"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 396
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 413
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    .line 398
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 401
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 402
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 404
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 405
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 406
    if-eqz v2, :cond_0

    .line 407
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 222
    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 226
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollToPositionWithDuration(II)V

    .line 229
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 521
    const-string v0, "CallSettingsActivity"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 154
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 11
    .parameter "className"

    .prologue
    .line 171
    const-string v8, "CallSettingsActivity : switchToParent"

    invoke-static {v8}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 175
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 177
    .local v6, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_1

    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    .line 178
    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.phone.FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 180
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 181
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 182
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 183
    iput-object v4, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 185
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 186
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->highlightHeader()V

    .line 188
    new-instance v8, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v8}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 189
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v9, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.phone.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 191
    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.phone.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 193
    .local v5, parentHeaderTitleRes:I
    if-eqz v5, :cond_0

    .line 194
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 197
    :cond_0
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_1

    .line 198
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/phone/callsettings/CallSettingsActivity$2;

    invoke-direct {v10, p0}, Lcom/android/phone/callsettings/CallSettingsActivity$2;-><init>(Lcom/android/phone/callsettings/CallSettingsActivity;)V

    invoke-virtual {p0, v8, v9, v10}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentHeaderTitleRes:I
    .end local v6           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "CallSettingsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find parent activity : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0e0214

    const/4 v1, 0x0

    .line 344
    const-string v0, "disable_sip_call_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 347
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 348
    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 349
    const-class v2, Lcom/android/phone/callsettings/VoipSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 350
    const-wide/32 v2, 0x7f0e0214

    iput-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 351
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 358
    :goto_0
    if-ge v2, v3, :cond_1

    .line 359
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v4, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 366
    :cond_1
    const-string v0, "remove_voicemail_category"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 368
    :goto_1
    if-ge v2, v3, :cond_2

    .line 369
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v4, Lcom/android/phone/callsettings/VoicemailSettingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 377
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 378
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 380
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v2

    .line 382
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 384
    goto :goto_2

    .line 358
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 368
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 385
    :cond_5
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 233
    const-string v0, "CallSettingsActivity : getIntent"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 239
    const-string v3, "support_split_settings"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "support_split_settings"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "call_block_ui"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->checkAutoReject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    :cond_0
    if-eqz v0, :cond_4

    .line 242
    const-string v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 244
    if-eqz v3, :cond_3

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 249
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    :cond_1
    :goto_1
    const-string v0, ":android:no_headers"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    :cond_2
    return-object v2

    .line 247
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 252
    :cond_4
    const-string v0, ":android:show_fragment"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, ":android:show_fragment"

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    const-string v1, "getStartingFragmentClass..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "support_split_settings"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 280
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 495
    const-string v1, "CallSettingsActivity"

    const-string v2, "onActivityResult: done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, simSlot:I
    sget v1, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 503
    :cond_0
    sget v1, Lcom/android/phone/CallSettingsTabActivity;->state:I

    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_0
    :pswitch_0
    return-void

    .line 507
    :pswitch_1
    invoke-static {p1, p2, p3, v0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->setContactPickIntent(IILandroid/content/Intent;I)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-static {p1, p2, p3, v0}, Lcom/android/phone/CallFeaturesSetting;->setContactPickIntent(IILandroid/content/Intent;I)V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v0, "onBuildHeaders..."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 334
    const v0, 0x7f06000b

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->updateHeaderList(Ljava/util/List;)V

    .line 338
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    .line 339
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 322
    const-string v1, "onBuildStartFragmentIntent..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 325
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 90
    const-string v1, "CallSettingsActivity : onCreate"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getMetaData()V

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "support_split_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->highlightHeader()V

    .line 104
    const v1, 0x7f0e0057

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    const-string v1, "com.android.phone.CURRENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 110
    const-string v1, "com.android.phone.PARENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/phone/callsettings/CallSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallSettingsActivity$1;-><init>(Lcom/android/phone/callsettings/CallSettingsActivity;)V

    invoke-virtual {p0, v1, v5, v2}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 128
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 134
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 135
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 8

    .prologue
    .line 285
    const-string v6, "onGetInitialHeader..."

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, fragmentClass:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader fragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 289
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 290
    .local v3, h:Landroid/preference/PreferenceActivity$Header;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader h.fragment : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 291
    iget-object v6, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    .end local v3           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 295
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 296
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v3, v4

    .line 299
    goto :goto_0

    .line 302
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, action:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 305
    const-string v6, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 306
    const v6, 0x7f0e0054

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 307
    .local v1, fragTitle:Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader fragTitle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 308
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 309
    .restart local v3       #h:Landroid/preference/PreferenceActivity$Header;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader h.title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 310
    iget v6, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_0

    .line 315
    .end local v1           #fragTitle:Ljava/lang/CharSequence;
    .end local v3           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v6, "onGetInitialHeader default header"

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 316
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 2
    .parameter "header"
    .parameter "position"

    .prologue
    .line 437
    const-string v1, "onHeaderClick..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 439
    .local v0, currentIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 441
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 442
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 467
    const-string v1, "onKeyDown..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 470
    .local v0, result:Z
    if-eqz v0, :cond_1

    move v1, v2

    .line 475
    .end local v0           #result:Z
    :goto_0
    return v1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/ADNList;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/ADNList;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 473
    .restart local v0       #result:Z
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    .line 475
    .end local v0           #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 450
    const-string v1, "onKeyUp..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 453
    .local v0, result:Z
    if-eqz v0, :cond_1

    move v1, v2

    .line 458
    .end local v0           #result:Z
    :goto_0
    return v1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/ADNList;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/ADNList;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/ADNList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 456
    .restart local v0       #result:Z
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    .line 458
    .end local v0           #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 417
    const-string v1, "onOptionsItemSelected..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 420
    .local v0, result:Z
    if-eqz v0, :cond_0

    move v1, v2

    .line 432
    .end local v0           #result:Z
    :goto_0
    return v1

    .line 422
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_1
    move v1, v2

    .line 429
    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "com.android.phone.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "com.android.phone.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    :cond_1
    return-void
.end method

.method public setCurrentFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 480
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 158
    const-string v0, "CallSettingsActivity : switchToHeader"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 160
    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 161
    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 164
    return-void
.end method
