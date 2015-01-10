.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String; = null

.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number)  OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

.field private static final CALLER_ID_SELECTION_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS_STRICT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

.field private static final CONTACT_ID_COLUMN:I = 0x4

.field private static final CONTACT_LOOKUP_KEY:I = 0x9

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x5

.field private static final CONTACT_RINGTONE_COLUMN:I = 0xa

.field private static final CONTACT_STATUS_COLUMN:I = 0x6

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_ID_COLUMN:I = 0x2

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_SEND_TO_VOICEMAIL_COLUMN:I = 0x4

.field private static final EMAIL_STATUS_COLUMN:I = 0x1

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NORMALIZED_NUMBER:I = 0x7

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final SEND_TO_VOICEMAIL:I = 0x8

.field static final STATIC_KEY_BUFFER_MAXIMUM_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/ContactsCache"

.field private static mContactMatchCliDigit:I

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

.field private final mUseContactMatchCliDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 733
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 735
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 748
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sec_custom_alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    .line 775
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 780
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1610
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 796
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 805
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 807
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    .line 808
    sget v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    .line 809
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set contact matching CLI digits:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact$ContactsCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1120
    const/4 v7, 0x0

    .line 1123
    .local v7, status:I
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1128
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1129
    const-string v0, "Mms/ContactsCache"

    const-string v1, "checkContactProviderAvailible getContentResolver is NULL cursor!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1154
    :goto_0
    return v0

    .line 1135
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1140
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1142
    packed-switch v7, :pswitch_data_0

    .line 1150
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1151
    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    move v0, v9

    .line 1154
    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "numberOrEmail"
    .parameter "numberE164"
    .parameter "number"

    .prologue
    .line 1330
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1331
    const/4 v2, 0x1

    .line 1344
    :goto_0
    return v2

    .line 1334
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, countryIso:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1336
    const/4 v2, 0x0

    goto :goto_0

    .line 1340
    :cond_1
    invoke-static {p2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, formated:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1344
    .local v2, result:Z
    goto :goto_0
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 12
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 950
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, oldName:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 955
    const-string v7, "Mms/ContactsCache"

    const-string v8, "org number modified"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_0
    :goto_0
    return v6

    .line 959
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 960
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, oldLabel:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 967
    const-string v7, "Mms/ContactsCache"

    const-string v8, "label changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 972
    const-string v7, "Mms/ContactsCache"

    const-string v8, "person id changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v8

    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 977
    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    .line 982
    const-string v7, "Mms/ContactsCache"

    const-string v8, "avatar changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_6
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Z

    move-result v8

    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Z

    move-result v9

    if-ne v8, v9, :cond_0

    .line 990
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 991
    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 992
    const-string v7, "Mms/ContactsCache"

    const-string v8, "lookupkey changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 998
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1001
    :cond_8
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    move v6, v7

    .line 1002
    goto/16 :goto_0

    .line 1004
    :cond_9
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1005
    const-string v7, "Mms/ContactsCache"

    const-string v8, "RingtonePath changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :cond_a
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1015
    .local v5, oldNumber:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, newNumber:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1017
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v6, v7

    .line 1021
    goto/16 :goto_0
.end method

.method private static containsAlpha(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    .line 1595
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1597
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1598
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1599
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 1600
    :cond_1
    const/4 v3, 0x1

    .line 1603
    .end local v0           #c:C
    :goto_1
    return v3

    .line 1597
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    .end local v0           #c:C
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 3
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 1348
    monitor-enter p1

    .line 1349
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1350
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    .line 1352
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    .line 1354
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1356
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1357
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1360
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1361
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 1363
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1367
    .local v0, data:[B
    monitor-enter p1

    .line 1368
    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;[B)[B

    .line 1369
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1370
    return-void

    .line 1363
    .end local v0           #data:[B
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1369
    .restart local v0       #data:[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 4
    .parameter "cursor"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1305
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1322
    :goto_0
    return v0

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->needE164Compare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1311
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/mms/data/Contact$ContactsCache;->compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1313
    goto :goto_0

    .line 1316
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1317
    goto :goto_0

    .line 1320
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 1522
    const-string v0, "Mms/ContactsCache"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1526
    .local v9, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1531
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1533
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1534
    const/4 v10, 0x0

    .line 1536
    .local v10, found:Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1537
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    .line 1539
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    .line 1541
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1542
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1543
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1545
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1546
    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1547
    const/4 v10, 0x1

    .line 1549
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1551
    if-eqz v10, :cond_0

    .line 1552
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 1553
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1554
    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;[B)[B

    .line 1555
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1561
    .end local v8           #data:[B
    .end local v10           #found:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1564
    :cond_4
    return-object v9

    .line 1549
    .restart local v10       #found:Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1561
    .end local v10           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1555
    .restart local v8       #data:[B
    .restart local v10       #found:Z
    .restart local v11       #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "number"

    .prologue
    .line 1210
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1213
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1214
    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1217
    :cond_0
    new-instance v8, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v8, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1220
    .local v8, entry:Lcom/android/mms/data/Contact;
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_1

    .line 1221
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1226
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1227
    .local v10, normalizedNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1228
    .local v9, minMatch:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1230
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1235
    .local v12, numberLen:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_4

    .line 1236
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1238
    .local v11, numberE164:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1239
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

    .line 1240
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    .line 1268
    .end local v11           #numberE164:Ljava/lang/String;
    .local v4, args:[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 1270
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1272
    .local v0, resolver:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1273
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1281
    :goto_1
    if-nez v6, :cond_7

    .line 1282
    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoByNumber("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") returned NULL cursor!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contact uri used "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1299
    .end local v0           #resolver:Landroid/content/ContentProviderClient;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v12           #numberLen:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v8

    .line 1242
    .restart local v11       #numberE164:Ljava/lang/String;
    .restart local v12       #numberLen:Ljava/lang/String;
    :cond_3
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    .line 1243
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v11, v4, v1

    const/4 v1, 0x2

    aput-object v12, v4, v1

    const/4 v1, 0x3

    aput-object v10, v4, v1

    const/4 v1, 0x4

    aput-object v12, v4, v1

    const/4 v1, 0x5

    aput-object v12, v4, v1

    const/4 v1, 0x6

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto :goto_0

    .line 1249
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v11           #numberE164:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmoji()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1250
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

    .line 1254
    .restart local v3       #selection:Ljava/lang/String;
    :goto_3
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    aput-object v12, v4, v1

    const/4 v1, 0x4

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_0

    .line 1252
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :cond_5
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_3

    .line 1275
    .restart local v0       #resolver:Landroid/content/ContentProviderClient;
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1276
    :catch_0
    move-exception v7

    .line 1277
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1289
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    invoke-direct {p0, v6, p1}, Lcom/android/mms/data/Contact$ContactsCache;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1290
    invoke-direct {p0, v8, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1293
    :cond_8
    if-eqz v6, :cond_9

    .line 1294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_9
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 1293
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_a

    .line 1294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method private getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1198
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    .line 1200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-gt v0, v1, :cond_0

    .line 1202
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getGroupAlert(J)Ljava/lang/String;
    .locals 11
    .parameter "personId"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1433
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "group_alert"

    aput-object v1, v2, v4

    .line 1436
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND group_alert IS NOT NULL"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1439
    .local v3, selection:Ljava/lang/String;
    const-string v5, "data1 LIMIT 1 "

    .line 1441
    .local v5, orderBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1442
    .local v0, resolver:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 1445
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1446
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1448
    .local v8, ringtone:Ljava/lang/String;
    const-string v1, "Mms/ContactsCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtone "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1458
    if-eqz v6, :cond_0

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1463
    .end local v8           #ringtone:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 1458
    :cond_1
    if-eqz v6, :cond_2

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v8, v9

    .line 1463
    goto :goto_0

    .line 1451
    :catch_0
    move-exception v7

    .line 1453
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1458
    if-eqz v6, :cond_2

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1454
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1455
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1458
    if-eqz v6, :cond_2

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1458
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 1
    .parameter "context"

    .prologue
    .line 813
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    .line 817
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    return-object v0
.end method

.method private getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 1
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 1423
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1430
    return-void
.end method

.method private getStatusIconResourceId(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1511
    if-eqz p1, :cond_0

    .line 1512
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "keyBuffer"

    .prologue
    .line 1571
    invoke-virtual {p2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1572
    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 1574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1575
    .local v1, position:I
    const/4 v2, 0x0

    .line 1576
    .local v2, resultCount:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1577
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1578
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1579
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1580
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1585
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 1586
    if-lez v2, :cond_2

    .line 1587
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1590
    .end local p1
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9
    .parameter "entry"

    .prologue
    .line 1474
    const/4 v2, 0x0

    .line 1477
    .local v2, data:[B
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1478
    :cond_0
    const/4 v5, 0x0

    .line 1506
    :goto_0
    return-object v5

    .line 1481
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1483
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1486
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 1487
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1488
    .local v3, dataLength:I
    new-array v2, v3, [B

    .line 1489
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1490
    .local v4, readLength:I
    if-le v3, v4, :cond_2

    .line 1491
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    const/4 v2, 0x0

    .line 1499
    .end local v3           #dataLength:I
    .end local v4           #readLength:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1500
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    .line 1506
    goto :goto_0

    .line 1495
    :catch_0
    move-exception v5

    .line 1499
    if-eqz v0, :cond_3

    .line 1500
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1502
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1498
    :catchall_0
    move-exception v5

    .line 1499
    if-eqz v0, :cond_4

    .line 1500
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1503
    :cond_4
    :goto_2
    throw v5

    .line 1502
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private needE164Compare()Z
    .locals 3

    .prologue
    .line 1325
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, countryIso:Ljava/lang/String;
    const-string v2, "RU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1327
    .local v1, result:Z
    :goto_0
    return v1

    .line 1326
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 7
    .parameter "c"
    .parameter "isIdBase"

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1031
    .local v0, entry:Lcom/android/mms/data/Contact;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1036
    monitor-enter p1

    .line 1037
    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1038
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    .line 1039
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1041
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1046
    :cond_1
    if-eqz p2, :cond_5

    .line 1047
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1048
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(JLjava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1056
    :goto_1
    monitor-enter p1

    .line 1057
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1059
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1061
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    .line 1062
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    .line 1063
    #getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;[B)[B

    .line 1066
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1067
    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1071
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Z

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Z)Z

    .line 1083
    #calls: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)V

    .line 1089
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1700()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1090
    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1700()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1091
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1092
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 1093
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_2

    .line 1102
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1050
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 1053
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 1091
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4

    .line 1097
    :cond_6
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1098
    const/4 v4, 0x0

    :try_start_6
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1100
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1101
    :try_start_7
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 1102
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 1100
    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method


# virtual methods
.method dump()V
    .locals 8

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_0
    const-string v5, "Mms/ContactsCache"

    const-string v6, "**** Contact cache dump ****"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 824
    .local v4, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 825
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 826
    .local v1, c:Lcom/android/mms/data/Contact;
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 9
    .parameter "numberOrEmail"

    .prologue
    .line 1614
    monitor-enter p0

    .line 1617
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/data/Contact$ContactsCache;->containsAlpha(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1619
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1622
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1623
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_7

    .line 1624
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1625
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_8

    .line 1626
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1627
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1628
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1629
    monitor-exit p0

    .line 1660
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1617
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1619
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    sget-object v7, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1632
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v7, :cond_4

    .line 1633
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1634
    .local v6, replaceNumberOrEmail:Ljava/lang/String;
    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1635
    invoke-direct {p0, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1636
    monitor-exit p0

    goto :goto_3

    .line 1661
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    .end local v6           #replaceNumberOrEmail:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1639
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    :try_start_1
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1640
    monitor-exit p0

    goto :goto_3

    .line 1648
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1649
    monitor-exit p0

    goto :goto_3

    .line 1625
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1654
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_8
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v7, 0x0

    invoke-direct {v0, p1, v7}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1659
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 5
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 881
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 882
    const-string p1, ""

    .line 890
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 891
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 893
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 896
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 898
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v4

    goto :goto_0

    .line 906
    :cond_1
    :try_start_2
    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 907
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 910
    move-object v0, v1

    .line 911
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 931
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 935
    if-eqz v2, :cond_3

    .line 936
    if-eqz p2, :cond_4

    .line 937
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 943
    :cond_3
    :goto_1
    return-object v1

    .line 931
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 939
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 931
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"

    .prologue
    .line 1177
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 1178
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(JLjava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"
    .parameter "lookupkey"

    .prologue
    .line 1187
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1188
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "numberOrEmail"

    .prologue
    .line 1163
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1164
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .line 1168
    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 1171
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 6

    .prologue
    .line 1665
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    monitor-enter p0

    .line 1669
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1670
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1671
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1672
    const/4 v4, 0x1

    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 1673
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1676
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1678
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1380
    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 1382
    .local v7, entry:Lcom/android/mms/data/Contact;
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1384
    .local v1, Uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1385
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1390
    :goto_0
    if-nez v6, :cond_1

    .line 1391
    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :goto_1
    return-object v7

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1397
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1398
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1399
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1401
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    .line 1404
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1406
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1410
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 1414
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateContactList(Lcom/android/mms/data/ContactList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 1106
    const-string v2, "Mms/ContactsCache"

    const-string v3, "updateContactList()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 1110
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1111
    .local v0, c:Lcom/android/mms/data/Contact;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    goto :goto_0

    .line 1113
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    return-void
.end method
