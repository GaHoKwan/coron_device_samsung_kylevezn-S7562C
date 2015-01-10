.class public Lcom/android/mms/ui/CbConfigPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CbConfigPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final MENU_DELETE_CHANNEL:I = 0x0

.field public static final MENU_EDIT_CHANNEL:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/CbConfigPreferenceActivity"

.field private static final mSimSlot:I


# instance fields
.field private mChannelContainer:Landroid/preference/PreferenceGroup;

.field private mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

.field private mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    .line 77
    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 265
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 284
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    .line 307
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 343
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesForMyChannel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addPreferencesAddMyChannel()V
    .locals 2

    .prologue
    .line 167
    const-string v1, "add_my_channel"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 168
    .local v0, pref:Landroid/preference/Preference;
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/preference/Preference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 170
    .restart local v0       #pref:Landroid/preference/Preference;
    const-string v1, "add_my_channel"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 171
    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 172
    const v1, 0x7f030072

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 179
    :cond_0
    return-void
.end method

.method private addPreferencesForMyChannel()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    .line 183
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 185
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 187
    .local v1, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v1           #pref:Landroid/preference/Preference;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 v0, 0x0

    :cond_0
    throw v2

    .line 190
    :cond_1
    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 v0, 0x0

    .line 196
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 198
    :cond_3
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 452
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 453
    const v1, 0x7f0a011d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    const v1, 0x7f0a013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    return-void
.end method

.method private createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "c"

    .prologue
    .line 201
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V

    .line 203
    return-object v0
.end method

.method private createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 8
    .parameter "mCBChannelList"

    .prologue
    const/4 v7, 0x0

    .line 462
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 464
    .local v4, pref:Landroid/preference/CheckBoxPreference;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 466
    .local v1, channelID:Ljava/lang/String;
    const-string v5, "[+-]?\\d+"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 472
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 473
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 474
    const-string v5, "919"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v1           #channelID:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private refreshMyChannel()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 239
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->startQuery()V

    .line 246
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sim_slot=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v8

    .line 232
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 370
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 372
    .local v8, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v8, :cond_0

    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 377
    .local v10, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, channelId:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    invoke-static {p0, v4, v7}, Lcom/android/mms/ui/ChannelUtils;->getIdbyChannel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 388
    .end local v4           #channelId:Ljava/lang/String;
    .end local v10           #pref:Landroid/preference/CheckBoxPreference;
    :pswitch_1
    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v9, v0, -0x2

    .line 389
    .local v9, position:I
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;

    invoke-direct {v0, p0, v9}, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;I)V

    const v1, 0x7f0a00a0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 93
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, mCBChannelList:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    :cond_0
    const-string v3, "pref_key_cb_my_channels"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    .line 101
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    .line 103
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    new-instance v3, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, p0, v4, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 105
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 106
    .local v1, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 108
    if-eqz v2, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 445
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 424
    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    const v2, 0x7f0a009f

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    goto :goto_0

    .line 439
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-static {p0, v3}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 146
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 159
    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;I)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 414
    const v0, 0x7f0a013d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 416
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 120
    .local v1, chSelectionPref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "All channels"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, chSelection:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "My channel"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    const-string v2, "My channel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const v2, 0x7f0a0135

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_1
    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    .locals 9
    .parameter "pref"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v8, "channel_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 210
    .local v3, idxChName:I
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, title:Ljava/lang/String;
    const-string v8, "channel_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, idxChId:I
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 213
    .local v0, channelID:I
    const-string v8, "is_checked"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 214
    .local v4, idxChecked:I
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 216
    .local v1, check:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    if-ne v1, v6, :cond_2

    :goto_1
    invoke-virtual {p1, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 220
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 221
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_0

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "919"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 219
    goto :goto_1
.end method
