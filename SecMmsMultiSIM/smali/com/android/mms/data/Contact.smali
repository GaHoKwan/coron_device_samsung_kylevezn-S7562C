.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static final CONTACT_DATA_DELIMETER:C = ';'

.field private static final FACEBOOK_CONTACT_ID:I = 0x15cf

.field private static final INVALID_CONTACT_ID:J = -0x1L

.field public static final INVALID_PREFIX:Ljava/lang/String; = "+00"

.field private static final TAG:Ljava/lang/String; = "Mms/Contact"

.field private static final VALUE_NULL:Ljava/lang/String; = "null"

.field public static isInvalid:Z

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static final sContactsObserver:Landroid/database/ContentObserver;

.field private static sIsRegistered:Z


# instance fields
.field private mAvatarData:[B

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J

.field private mRingtonePath:Ljava/lang/String;

.field private mSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    .line 71
    sput-boolean v0, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    .line 74
    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 145
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 148
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "lookupkey"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    .line 170
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 129
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 132
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 158
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 161
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static IsPresentInContact(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 1701
    const/4 v1, 0x1

    .line 1702
    .local v1, isPresentInContact:Z
    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1704
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    .line 1706
    return v1
.end method

.method static synthetic access$000()Lcom/android/mms/data/Contact$ContactsCache;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/data/Contact;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/Contact;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/data/Contact;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/mms/data/Contact;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/mms/data/Contact;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/data/Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 577
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 578
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->dump()V

    .line 663
    return-void
.end method

.method public static declared-synchronized dumpListeners()V
    .locals 8

    .prologue
    .line 589
    const-class v5, Lcom/android/mms/data/Contact;

    monitor-enter v5

    const/4 v0, 0x0

    .line 590
    .local v0, i:I
    :try_start_0
    const-string v4, "Mms/Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Contact] dumpListeners; size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    sget-object v4, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 592
    .local v3, listener:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Mms/Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 594
    .end local v3           #listener:Lcom/android/mms/data/Contact$UpdateListener;
    :cond_0
    monitor-exit v5

    return-void

    .line 589
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "idAndNumber"

    .prologue
    const/16 v3, 0x3b

    .line 284
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 285
    .local v1, start:I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 287
    .local v0, end:I
    if-ge v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 291
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static extractId(Ljava/lang/String;)J
    .locals 3
    .parameter "idAndNumber"

    .prologue
    .line 275
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 277
    .local v0, end:I
    if-gtz v0, :cond_0

    .line 278
    const-wide/16 v1, -0x1

    .line 280
    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "number"

    .prologue
    .line 410
    move-object v0, p1

    .line 411
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v1, s:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .end local v1           #s:Ljava/lang/StringBuffer;
    :cond_1
    return-object v0

    .line 415
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 4
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 180
    const-string v2, "_@"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "^@"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, voicemail:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/data/Contact;

    .end local v0           #contact:Lcom/android/mms/data/Contact;
    invoke-direct {v0, p0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-static {v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 185
    if-nez v0, :cond_1

    .line 186
    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v2, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 190
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #voicemail:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v2, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 8
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 217
    .local v2, contacts:Lcom/android/mms/data/ContactList;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 218
    :cond_0
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactList"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    return-object v2

    .line 222
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, contactData:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/data/Contact;->isValidContactData(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 225
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactData"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractId(Ljava/lang/String;)J

    move-result-wide v4

    .line 230
    .local v4, id:J
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v4

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x15cf

    cmp-long v6, v6, v4

    if-nez v6, :cond_5

    .line 232
    :cond_4
    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 233
    .local v0, contact:Lcom/android/mms/data/Contact;
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 1 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v6, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 239
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 240
    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 241
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 2 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_6
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 3 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 11
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v10, 0x3b

    .line 300
    if-nez p0, :cond_1

    .line 301
    const/4 v1, 0x0

    .line 342
    :cond_0
    return-object v1

    .line 303
    :cond_1
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 304
    .local v1, contacts:Lcom/android/mms/data/ContactList;
    const/4 v3, 0x0

    .line 305
    .local v3, id:Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, number:Ljava/lang/String;
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    #calls: Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z
    invoke-static {v7}, Lcom/android/mms/data/Contact$ContactsCache;->access$100(Lcom/android/mms/data/Contact$ContactsCache;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 310
    .local v4, idAndNumber:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 312
    .local v5, idx:I
    if-ltz v5, :cond_3

    .line 313
    const/4 v7, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "5583"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 319
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 322
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 324
    const-string v7, "Mms/Contact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " GetByIds number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_4
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    if-eqz v6, :cond_2

    .line 334
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 337
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v7, v6, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 429
    const-string v0, ""

    .line 430
    .local v0, name:Ljava/lang/String;
    const-string v1, "_@"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^@"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    move-object v0, p0

    .line 439
    :cond_1
    return-object v0

    .line 433
    :cond_2
    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 444
    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    move-object v0, p0

    .line 449
    :cond_0
    return-object v0
.end method

.method public static getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 365
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getTemp()Lcom/android/mms/data/Contact;
    .locals 2

    .prologue
    .line 1695
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isNeedRecipientIdCache"

    .prologue
    const/4 v3, 0x1

    .line 633
    const-string v0, "Mms/Contact"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "Mms/Contact"

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    .line 637
    if-eqz p1, :cond_1

    .line 638
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 649
    :goto_0
    sget-boolean v0, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 652
    sput-boolean v3, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    .line 654
    :cond_0
    const-string v0, "Mms/Contact"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void

    .line 640
    :cond_1
    const-string v0, "Mms/Contact"

    const-string v1, "skip RecipientIdCache.init() on app creating"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static invalidateCache()V
    .locals 3

    .prologue
    .line 346
    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateCache(),isInvalid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/data/Contact;->isInvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    .line 359
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    goto :goto_0
.end method

.method private static isValidContactData(Ljava/lang/String;)Z
    .locals 5
    .parameter "contactData"

    .prologue
    const/16 v4, 0x3b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v4, v3, :cond_0

    :cond_2
    :goto_1
    move v1, v2

    .line 271
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v1, "Mms/Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " StringIndexOutOfBoundsException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 583
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 584
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 585
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static replaceInvalidCharsOnRecipient([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "recipients"

    .prologue
    .line 388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 390
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 391
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 392
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 397
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public static replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "recipient"

    .prologue
    .line 369
    move-object v0, p0

    .line 370
    .local v0, replaced:Ljava/lang/String;
    const-string v1, "+00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 384
    :cond_1
    :goto_0
    return-object v0

    .line 378
    :cond_2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 381
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAlbums(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1691
    .local p0, albums:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "defaultValue"

    .prologue
    .line 616
    monitor-enter p0

    const/4 v0, 0x0

    .line 620
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v3, :cond_0

    .line 621
    iget-object v3, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 622
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v1           #b:Landroid/graphics/Bitmap;
    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v3, "Mms/getAvatar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    const/4 v0, 0x0

    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    move-object v0, p2

    .line 629
    goto :goto_1

    .line 616
    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFormattedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 524
    :goto_0
    monitor-exit p0

    return-object v0

    .line 521
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLookupUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 557
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 499
    :goto_0
    monitor-exit p0

    return-object v0

    .line 493
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersonId()J
    .locals 2

    .prologue
    .line 561
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPresenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRecentNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSendToVoicemail()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAvatarData()Z
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlias()Z
    .locals 1

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNumberModified()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized isPhoneNumber()Z
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 457
    const-string v0, "Mms/Contact"

    const-string v1, "reload()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 460
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    .line 461
    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 487
    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object v0
.end method
