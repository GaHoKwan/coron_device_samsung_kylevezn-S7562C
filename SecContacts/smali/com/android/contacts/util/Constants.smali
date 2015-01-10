.class public Lcom/android/contacts/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/Constants$Intent;
    }
.end annotation


# static fields
.field public static final ADN2_ANR_URI:Landroid/net/Uri;

.field public static final ADN2_EMAILS_URI:Landroid/net/Uri;

.field public static final ADN2_URI:Landroid/net/Uri;

.field public static final ADN_ANR_URI:Landroid/net/Uri;

.field public static final ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final ADN_URI:Landroid/net/Uri;

.field public static final RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_URI:Landroid/net/Uri;

.field public static final SDN2_URI:Landroid/net/Uri;

.field public static final SDN_URI:Landroid/net/Uri;

.field public static final SETTINGS_STATUS_URI:Landroid/net/Uri;

.field public static final VALUE_RINGTONE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->VALUE_RINGTONE_PATH:Ljava/lang/String;

    .line 234
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    .line 237
    const-string v0, "content://com.android.contacts/raw_contacts/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    .line 240
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    .line 246
    const-string v0, "content://icc2/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    .line 252
    const-string v0, "content://icc/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->SDN_URI:Landroid/net/Uri;

    .line 257
    const-string v0, "content://icc2/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->SDN2_URI:Landroid/net/Uri;

    .line 263
    const-string v0, "content://icc/adn/init"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN_ANR_URI:Landroid/net/Uri;

    .line 269
    const-string v0, "content://icc2/adn/init"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN2_ANR_URI:Landroid/net/Uri;

    .line 275
    const-string v0, "content://icc/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    .line 281
    const-string v0, "content://icc2/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN2_EMAILS_URI:Landroid/net/Uri;

    .line 287
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

    .line 290
    const-string v0, "content://com.android.contacts/raw_contacts/adn2/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

    .line 293
    const-string v0, "content://com.android.contacts/settings_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->SETTINGS_STATUS_URI:Landroid/net/Uri;

    .line 296
    const-string v0, "content://com.android.contacts/raw_contacts/wipe_out"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    return-void
.end method
