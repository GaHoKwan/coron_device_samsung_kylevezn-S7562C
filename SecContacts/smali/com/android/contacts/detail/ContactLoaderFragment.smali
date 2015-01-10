.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;,
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

.field private mIsBlackListContact:Z

.field private mIsOptionsMenuChanged:Z

.field private mIsUsingTwoPanes:Z

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuExceptSim:Z

.field private mOptionsMenuExceptSimAirplane:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuPhoneNumber:Z

.field private mOptionsMenuSeparate:Z

.field private mOptionsMenuShareable:Z

.field private mOptionsMenuUserProfile:Z

.field private mOptionsMenuWritable:Z

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 272
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 360
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$2;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V

    return-void
.end method

.method private addToVipList(Landroid/net/Uri;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 995
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 996
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 999
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1000
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1006
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03b5

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1031
    :goto_1
    return-void

    .line 1008
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 1009
    if-eqz p2, :cond_3

    .line 1010
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0d03b4

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 1015
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x2

    const v3, 0x7f0d03b3

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1022
    const-string v0, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v2, "number"

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    if-eqz p2, :cond_5

    .line 1025
    const-string v0, "list"

    const-string v2, "whitelist"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1027
    :cond_5
    const-string v0, "list"

    const-string v2, "blacklist"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1035
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 1038
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1039
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0d0256

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 1043
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    const-string v6, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1044
    const-string v0, "withSpecialChar"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 3

    .prologue
    .line 1225
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1227
    .local v1, parentActivity:Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/detail/ContactLoaderFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$3;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 1238
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 1239
    return-void
.end method

.method private doPickRingtone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1092
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1101
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1109
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1112
    invoke-virtual {p0, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1113
    return-void

    .line 1105
    :cond_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1050
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v7

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 1054
    const-string v0, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1056
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1060
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1064
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1067
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    :cond_1
    if-eqz v0, :cond_2

    .line 1073
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_2
    return-object v6
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    .line 978
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 979
    const-string v1, "uri_to_authorize"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 980
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "authorize"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_0

    .line 986
    const-string v1, "authorized_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 989
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .parameter "pickedUri"

    .prologue
    .line 1165
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1170
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1171
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1173
    return-void

    .line 1168
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private isFDNEnabled()Z
    .locals 4

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, isFDNEnabled:Z
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 657
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 658
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 662
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return v0

    .line 659
    :catch_0
    move-exception v2

    .line 660
    .local v2, re:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setContactInfos()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 421
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 424
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactWritable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactUserProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->hasContactPhoneNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 432
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 435
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSendToVoicemail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 437
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 440
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 432
    goto :goto_0

    :cond_4
    move v0, v2

    .line 433
    goto :goto_1

    :cond_5
    move v1, v2

    .line 438
    goto :goto_2
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1081
    packed-switch p1, :pswitch_data_0

    .line 1087
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1083
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 1084
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public hasContactPhoneNumber()Z
    .locals 17

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v15, :cond_1

    .line 703
    :cond_0
    const/4 v15, 0x0

    .line 742
    :goto_0
    return v15

    .line 706
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 707
    .local v2, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v4

    .line 709
    .local v4, blackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v13, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    .line 712
    if-eqz v2, :cond_2

    if-nez v4, :cond_3

    .line 713
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 715
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 716
    .local v7, entity:Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 717
    .local v6, entValues:Landroid/content/ContentValues;
    const-string v15, "account_type"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, accountType:Ljava/lang/String;
    const-string v15, "data_set"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 720
    .local v5, dataSet:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity$NamedContentValues;

    .line 721
    .local v14, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v8, v14, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 722
    .local v8, entryValues:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 723
    .local v12, mimeType:Ljava/lang/String;
    invoke-virtual {v2, v1, v5, v12}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 726
    .local v11, kind:Lcom/android/contacts/model/DataKind;
    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 727
    if-eqz v11, :cond_5

    iget-object v15, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v15, :cond_5

    .line 729
    iget-object v15, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 730
    .local v3, actionBody:Ljava/lang/CharSequence;
    if-eqz v3, :cond_5

    .line 731
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 734
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    goto :goto_1

    .line 742
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #actionBody:Ljava/lang/CharSequence;
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v6           #entValues:Landroid/content/ContentValues;
    .end local v7           #entity:Landroid/content/Entity;
    .end local v8           #entryValues:Landroid/content/ContentValues;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #kind:Lcom/android/contacts/model/DataKind;
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v14           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->areWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactSim()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactUserProfile()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactWritable()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->areWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    return v0
.end method

.method public isSimAirplane()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 692
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 688
    goto :goto_0

    :cond_1
    move v0, v1

    .line 692
    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 319
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 331
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 332
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_5

    .line 333
    iput-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 334
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    if-eqz v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V

    goto :goto_0

    .line 342
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 311
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 316
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1117
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1121
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1123
    :pswitch_0
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1124
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 265
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 268
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 269
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    if-eqz p1, :cond_0

    .line 231
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 232
    const-string v0, "optionsMenuEditable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 233
    const-string v0, "optionsMenuShareable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 234
    const-string v0, "sendToVoicemailState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 235
    const-string v0, "optionsMenuWritable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    .line 236
    const-string v0, "optionsMenuUserProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 237
    const-string v0, "optionsMenuPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 238
    const-string v0, "optionsMenuExceptSim"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 239
    const-string v0, "optionsMenuExceptSimAirplane"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 240
    const-string v0, "optionsMenuSeparate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 241
    const-string v0, "isBlackListContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    .line 243
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 444
    const v0, 0x7f12001a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 304
    :goto_0
    const v0, 0x7f040041

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 290
    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1177
    .line 1179
    if-nez p3, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1183
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1186
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1187
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1193
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v1, "list"

    const-string v2, "whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1201
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1202
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v1, "list"

    const-string v2, "blacklist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 1216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d024d

    const v4, 0x7f0d0247

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 747
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 970
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 750
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    .line 753
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 757
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 759
    :cond_2
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 761
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 782
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1

    .line 786
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_1

    .line 787
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto/16 :goto_1

    .line 791
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_6

    move v1, v2

    goto/16 :goto_1

    .line 793
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 794
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 795
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 799
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 802
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    const-string v4, "text/x-vcard"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 809
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v0

    if-nez v0, :cond_8

    .line 815
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v5}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 819
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 820
    :catch_0
    move-exception v0

    .line 821
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0136

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 812
    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 827
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 828
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 829
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v0, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 831
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 827
    goto :goto_3

    .line 835
    :sswitch_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_a

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.SET_DEFAULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 840
    :cond_a
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v2, "contactUri is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 846
    :sswitch_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_c

    .line 847
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    const-string v4, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 850
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_b

    .line 852
    const-string v2, "intentFrom"

    const-string v3, "mainlist"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 854
    :cond_b
    const-string v2, "intentFrom"

    const-string v3, "detailview"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 858
    :cond_c
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v2, "contactUri is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 864
    :sswitch_7
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.JOINED_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 867
    const-string v2, "UNLINK_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 871
    :cond_d
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v2, "contactUri is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 878
    :sswitch_8
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 879
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.HISTORY_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 883
    :cond_e
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v2, "contactUri is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 889
    :sswitch_9
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 891
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 893
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    move v3, v2

    .line 894
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 895
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_f

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 897
    :cond_f
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v3, "invalid number"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0435

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 894
    :cond_10
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 902
    :cond_11
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 904
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isBlackListContact"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 905
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_13

    move v2, v1

    :cond_13
    invoke-static {v3, v4, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_1

    .line 912
    :sswitch_a
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 918
    :sswitch_b
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 925
    :sswitch_c
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 931
    :sswitch_d
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 932
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    const-string v2, "CONTACT_URI"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 934
    const-string v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 940
    :sswitch_e
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V

    goto/16 :goto_1

    .line 947
    :sswitch_f
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 949
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 950
    const-string v2, "fromDetail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 962
    :sswitch_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->handleOptionMenuSelection(Landroid/view/MenuItem;)Z

    goto/16 :goto_1

    .line 747
    :sswitch_data_0
    .sparse-switch
        0x7f0903a6 -> :sswitch_1
        0x7f0903b8 -> :sswitch_6
        0x7f0903d7 -> :sswitch_8
        0x7f0903d8 -> :sswitch_0
        0x7f0903d9 -> :sswitch_7
        0x7f0903da -> :sswitch_5
        0x7f0903db -> :sswitch_2
        0x7f0903dc -> :sswitch_f
        0x7f0903dd -> :sswitch_3
        0x7f0903de -> :sswitch_9
        0x7f0903df -> :sswitch_a
        0x7f0903e0 -> :sswitch_b
        0x7f0903e1 -> :sswitch_c
        0x7f0903e2 -> :sswitch_d
        0x7f0903e3 -> :sswitch_e
        0x7f0903e4 -> :sswitch_4
        0x7f0903e5 -> :sswitch_10
        0x7f0903e6 -> :sswitch_10
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 34
    .parameter "menu"

    .prologue
    .line 458
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 460
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isFDNEnabled()Z

    move-result v15

    .line 462
    .local v15, isFdnEnabled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v31

    if-nez v31, :cond_1

    const/16 v31, 0x1

    :goto_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsUsingTwoPanes:Z

    .line 465
    const/16 v16, 0x0

    .line 467
    .local v16, isSearchMode:Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v16

    .line 471
    :cond_0
    if-eqz v16, :cond_2

    .line 472
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v29

    .line 473
    .local v29, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v29

    if-ge v13, v0, :cond_d

    .line 474
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 462
    .end local v13           #i:I
    .end local v16           #isSearchMode:Z
    .end local v29           #size:I
    :cond_1
    const/16 v31, 0x0

    goto :goto_0

    .line 480
    .restart local v16       #isSearchMode:Z
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 483
    const/4 v3, 0x1

    .line 484
    .local v3, SIM_ONE:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v11

    .line 485
    .local v11, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v31

    const-string v32, "account_type"

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v19

    .line 488
    .local v19, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v31, "vnd.sec.contact.sim"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 489
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 502
    .end local v3           #SIM_ONE:I
    .end local v4           #accountType:Ljava/lang/String;
    .end local v11           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v19           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_3
    :goto_2
    const v31, 0x7f0903e4

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 503
    .local v22, optionsSendToVoicemail:Landroid/view/MenuItem;
    if-eqz v22, :cond_4

    .line 504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    :cond_4
    const v31, 0x7f0903db

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 508
    .local v21, optionsRingtone:Landroid/view/MenuItem;
    if-eqz v21, :cond_5

    .line 511
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    :cond_5
    const v31, 0x7f0903d7

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 516
    .local v12, historyMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    if-nez v16, :cond_10

    const/16 v31, 0x1

    :goto_3
    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 518
    const v31, 0x7f0903da

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 519
    .local v20, optionsDefault:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    if-nez v16, :cond_11

    const/16 v31, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    const v31, 0x7f0903d8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 522
    .local v10, editMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-nez v31, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    move/from16 v31, v0

    if-nez v31, :cond_12

    .line 523
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    :goto_5
    const v31, 0x7f0903a6

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 533
    .local v9, deleteMenu:Landroid/view/MenuItem;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 536
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    :goto_6
    const v31, 0x7f0903b8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 543
    .local v18, joinMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-eqz v31, :cond_19

    if-nez v16, :cond_19

    const/16 v31, 0x1

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 546
    const v31, 0x7f0903d9

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 547
    .local v27, separateMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    const/16 v31, 0x1

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v17

    .line 550
    .local v17, isUsmEnabled:Z
    const v31, 0x7f0903dd

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 551
    .local v28, shareMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    if-nez v16, :cond_1b

    if-nez v17, :cond_1b

    const/16 v31, 0x1

    :goto_9
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 554
    const v31, 0x7f0903e3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 555
    .local v5, addToHomeMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "easy_mode_switch"

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1c

    const/4 v14, 0x1

    .line 557
    .local v14, isEasyModeEnabled:Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_1d

    if-nez v14, :cond_1d

    if-nez v16, :cond_1d

    const/16 v31, 0x1

    :goto_b
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 560
    const-string v31, "feature_vzw"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 561
    const v31, 0x7f0d0259

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 565
    :cond_6
    const v31, 0x7f0903dc

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 566
    .local v6, assignSpeeddialMenu:Landroid/view/MenuItem;
    if-eqz v6, :cond_8

    .line 567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_1e

    const/16 v31, 0x1

    :goto_c
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Contact_EnableAAB"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v31

    if-nez v31, :cond_8

    .line 571
    :cond_7
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    :cond_8
    const v31, 0x7f0903de

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 577
    .local v25, rejectMenu:Landroid/view/MenuItem;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v24, rejectIntent:Landroid/content/Intent;
    const-string v31, "isBlackListContact"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 582
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 584
    const v31, 0x7f0d03be

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v31

    const v32, 0x7f0206af

    invoke-interface/range {v31 .. v32}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Contact_DisableMenuAddToRejectList"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 594
    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    :goto_e
    const v31, 0x7f0903df

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 605
    .local v30, whiteListMenu:Landroid/view/MenuItem;
    if-eqz v30, :cond_9

    .line 606
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_27

    .line 608
    const v31, 0x7f0903de

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_26

    const/16 v31, 0x1

    :goto_f
    invoke-interface/range {v30 .. v31}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    :cond_9
    :goto_10
    const v31, 0x7f0903e0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 616
    .local v7, blackListMenu:Landroid/view/MenuItem;
    if-eqz v7, :cond_a

    .line 617
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_29

    .line 619
    const v31, 0x7f0903de

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_28

    const/16 v31, 0x1

    :goto_11
    move/from16 v0, v31

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 627
    :cond_a
    :goto_12
    const v31, 0x7f0903e1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 628
    .local v8, copyToDialingMenu:Landroid/view/MenuItem;
    if-eqz v8, :cond_b

    .line 629
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2b

    .line 631
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2a

    const/16 v31, 0x1

    :goto_13
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 637
    :cond_b
    :goto_14
    const v31, 0x7f0903e4

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 638
    .local v26, sendVoiceMenu:Landroid/view/MenuItem;
    if-eqz v26, :cond_c

    .line 639
    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 642
    :cond_c
    const v31, 0x7f0903e2

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 644
    .local v23, printMenu:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2c

    if-nez v16, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMobilePrintSupported(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_2c

    const/16 v31, 0x1

    :goto_15
    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_AddExtMobilePrint"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "Epson"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 649
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    .end local v5           #addToHomeMenu:Landroid/view/MenuItem;
    .end local v6           #assignSpeeddialMenu:Landroid/view/MenuItem;
    .end local v7           #blackListMenu:Landroid/view/MenuItem;
    .end local v8           #copyToDialingMenu:Landroid/view/MenuItem;
    .end local v9           #deleteMenu:Landroid/view/MenuItem;
    .end local v10           #editMenu:Landroid/view/MenuItem;
    .end local v12           #historyMenu:Landroid/view/MenuItem;
    .end local v14           #isEasyModeEnabled:Z
    .end local v17           #isUsmEnabled:Z
    .end local v18           #joinMenu:Landroid/view/MenuItem;
    .end local v20           #optionsDefault:Landroid/view/MenuItem;
    .end local v21           #optionsRingtone:Landroid/view/MenuItem;
    .end local v22           #optionsSendToVoicemail:Landroid/view/MenuItem;
    .end local v23           #printMenu:Landroid/view/MenuItem;
    .end local v24           #rejectIntent:Landroid/content/Intent;
    .end local v25           #rejectMenu:Landroid/view/MenuItem;
    .end local v26           #sendVoiceMenu:Landroid/view/MenuItem;
    .end local v27           #separateMenu:Landroid/view/MenuItem;
    .end local v28           #shareMenu:Landroid/view/MenuItem;
    .end local v30           #whiteListMenu:Landroid/view/MenuItem;
    :cond_d
    return-void

    .line 490
    .restart local v3       #SIM_ONE:I
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v11       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v19       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_e
    const-string v31, "vnd.sec.contact.sim2"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 491
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 492
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    goto/16 :goto_2

    .line 494
    :cond_f
    const/16 v31, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    goto/16 :goto_2

    .line 516
    .end local v3           #SIM_ONE:I
    .end local v4           #accountType:Ljava/lang/String;
    .end local v11           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v19           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v12       #historyMenu:Landroid/view/MenuItem;
    .restart local v21       #optionsRingtone:Landroid/view/MenuItem;
    .restart local v22       #optionsSendToVoicemail:Landroid/view/MenuItem;
    :cond_10
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 519
    .restart local v20       #optionsDefault:Landroid/view/MenuItem;
    :cond_11
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 524
    .restart local v10       #editMenu:Landroid/view/MenuItem;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-nez v31, :cond_13

    if-eqz v15, :cond_13

    .line 525
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 526
    :cond_13
    const-string v31, "alwasy_tab_mode_tablet"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsUsingTwoPanes:Z

    move/from16 v31, v0

    if-nez v31, :cond_14

    const/16 v31, 0x1

    :goto_16
    move/from16 v0, v31

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_14
    const/16 v31, 0x0

    goto :goto_16

    .line 529
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    move/from16 v31, v0

    if-eqz v31, :cond_16

    const/16 v31, 0x1

    :goto_17
    move/from16 v0, v31

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_16
    const/16 v31, 0x0

    goto :goto_17

    .line 538
    .restart local v9       #deleteMenu:Landroid/view/MenuItem;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    move/from16 v31, v0

    if-eqz v31, :cond_18

    const/16 v31, 0x1

    :goto_18
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_18
    const/16 v31, 0x0

    goto :goto_18

    .line 543
    .restart local v18       #joinMenu:Landroid/view/MenuItem;
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 547
    .restart local v27       #separateMenu:Landroid/view/MenuItem;
    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 551
    .restart local v17       #isUsmEnabled:Z
    .restart local v28       #shareMenu:Landroid/view/MenuItem;
    :cond_1b
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 555
    .restart local v5       #addToHomeMenu:Landroid/view/MenuItem;
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 557
    .restart local v14       #isEasyModeEnabled:Z
    :cond_1d
    const/16 v31, 0x0

    goto/16 :goto_b

    .line 567
    .restart local v6       #assignSpeeddialMenu:Landroid/view/MenuItem;
    :cond_1e
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 587
    .restart local v24       #rejectIntent:Landroid/content/Intent;
    .restart local v25       #rejectMenu:Landroid/view/MenuItem;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v31, v0

    if-eqz v31, :cond_20

    const v31, 0x7f0d02be

    :goto_19
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v31, v0

    if-eqz v31, :cond_21

    const v31, 0x7f0206a7

    :goto_1a
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_20
    const v31, 0x7f0d02bd

    goto :goto_19

    :cond_21
    const v31, 0x7f02067d

    goto :goto_1a

    .line 595
    :cond_22
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_23

    .line 600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_25

    if-nez v16, :cond_25

    const/16 v31, 0x1

    :goto_1b
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    .line 598
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v31, v0

    if-eqz v31, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v31, v0

    if-eqz v31, :cond_24

    const/16 v31, 0x1

    :goto_1c
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    :cond_24
    const/16 v31, 0x0

    goto :goto_1c

    .line 600
    :cond_25
    const/16 v31, 0x0

    goto :goto_1b

    .line 609
    .restart local v30       #whiteListMenu:Landroid/view/MenuItem;
    :cond_26
    const/16 v31, 0x0

    goto/16 :goto_f

    .line 611
    :cond_27
    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 620
    .restart local v7       #blackListMenu:Landroid/view/MenuItem;
    :cond_28
    const/16 v31, 0x0

    goto/16 :goto_11

    .line 622
    :cond_29
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 631
    .restart local v8       #copyToDialingMenu:Landroid/view/MenuItem;
    :cond_2a
    const/16 v31, 0x0

    goto/16 :goto_13

    .line 633
    :cond_2b
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 644
    .restart local v23       #printMenu:Landroid/view/MenuItem;
    .restart local v26       #sendVoiceMenu:Landroid/view/MenuItem;
    :cond_2c
    const/16 v31, 0x0

    goto/16 :goto_15
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v0, "optionsMenuOptions"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "optionsMenuEditable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "optionsMenuShareable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v0, "sendToVoicemailState"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    const-string v0, "optionsMenuWritable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v0, "optionsMenuUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string v0, "optionsMenuPhoneNumber"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v0, "optionsMenuExceptSim"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "optionsMenuExceptSimAirplane"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v0, "optionsMenuSeparate"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v0, "isBlackListContact"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method public setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    .line 355
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 351
    return-void
.end method
