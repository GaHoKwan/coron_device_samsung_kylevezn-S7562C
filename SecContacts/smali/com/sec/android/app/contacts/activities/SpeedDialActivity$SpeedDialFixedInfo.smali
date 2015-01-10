.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialFixedInfo"
.end annotation


# instance fields
.field private mSdFixedInfoName:Ljava/lang/String;

.field private mSdFixedInfoNumber:Ljava/lang/String;

.field private mSdFixedInfoPos:I

.field private mSdFixedInfoType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "pos"
    .parameter "num"
    .parameter "name"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;

    .line 249
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I

    .line 250
    iput-object p4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;

    .line 251
    iput-object p5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 241
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;

    return-object v0
.end method
