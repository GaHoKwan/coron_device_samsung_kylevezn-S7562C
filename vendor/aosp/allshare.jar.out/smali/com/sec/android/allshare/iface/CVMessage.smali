.class public Lcom/sec/android/allshare/iface/CVMessage;
.super Ljava/lang/Object;
.source "CVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final CVM_TYPE_EVENT:I = 0x4

.field public static final CVM_TYPE_REQUEST:I = 0x2

.field public static final CVM_TYPE_RESPONSE:I = 0x3

.field public static final CVM_TYPE_UNDEF:I = 0x1

.field public static final EVT_MSG_KEY:Ljava/lang/String; = "EVT_MSG_KEY"

.field public static final RES_MSG_KEY:Ljava/lang/String; = "RES_MSG_KEY"


# instance fields
.field private mActionID:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mMessageID:J

.field private mReplyMessenger:Landroid/os/Messenger;

.field private mType:I

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 79
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "action"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 100
    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 102
    iput-object p2, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 284
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/iface/CVMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final getActionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getEventID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public final getMsgID()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    return-wide v0
.end method

.method public final getMsgType()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    return v0
.end method

.method public final getVersion()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 275
    const-class v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 277
    return-void
.end method

.method public setActionID(Ljava/lang/String;)V
    .locals 0
    .parameter "action_id"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 158
    return-void
.end method

.method public setEventID(Ljava/lang/String;)V
    .locals 0
    .parameter "event_id"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "messenger"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 167
    return-void
.end method

.method public setMsgID(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 149
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 139
    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 140
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dst"
    .parameter "flags"

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 265
    return-void
.end method
