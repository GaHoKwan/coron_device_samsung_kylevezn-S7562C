.class public Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocatorBootCompletedReceiver.java"


# static fields
.field private static bTryAgain10Minutes:Z

.field private static bUpdateSuccess:Z

.field public static haveNetWork:Z

.field public static isSIMNetConnected:Z

.field public static isWifiNetConnected:Z

.field private static lastUpdateTime:I

.field public static timetickCount:I


# instance fields
.field private autoUpdate:Z

.field private bNeedUpdate:Z

.field private dateEve3Min:[I

.field private dateEve3MinTest:[I

.field private dateEveOne:[I

.field private dateEveSix:[I

.field private dateEveThree:[I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field public mContext:Landroid/content/Context;

.field public mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mWLANOnly:Z

.field private updateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    .line 152
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    .line 154
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->haveNetWork:Z

    .line 156
    sput v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    .line 118
    const/16 v0, 0x104

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    return-void

    .line 73
    :array_0
    .array-data 0x4
        0x0t 0x6et 0xft 0x0t
        0x40t 0xb0t 0x1et 0x0t
        0x80t 0xf2t 0x2dt 0x0t
        0xc0t 0x34t 0x3dt 0x0t
        0x0t 0x77t 0x4ct 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x80t 0xfbt 0x6at 0x0t
        0xc0t 0x3dt 0x7at 0x0t
        0x0t 0x80t 0x89t 0x0t
        0x40t 0xc2t 0x98t 0x0t
        0x80t 0x4t 0xa8t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 74
    :array_1
    .array-data 0x4
        0x80t 0xf2t 0x2dt 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x0t 0x80t 0x89t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 75
    :array_2
    .array-data 0x4
        0x40t 0xb9t 0x5bt 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 118
    :array_3
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x23t 0x3t 0x0t 0x0t
        0x26t 0x3t 0x0t 0x0t
        0x29t 0x3t 0x0t 0x0t
        0x2ct 0x3t 0x0t 0x0t
        0x2ft 0x3t 0x0t 0x0t
        0x32t 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x38t 0x3t 0x0t 0x0t
        0x3bt 0x3t 0x0t 0x0t
        0x3et 0x3t 0x0t 0x0t
        0x41t 0x3t 0x0t 0x0t
        0x44t 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
        0x4at 0x3t 0x0t 0x0t
        0x4dt 0x3t 0x0t 0x0t
        0x50t 0x3t 0x0t 0x0t
        0x53t 0x3t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x59t 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x87t 0x3t 0x0t 0x0t
        0x8at 0x3t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x90t 0x3t 0x0t 0x0t
        0x93t 0x3t 0x0t 0x0t
        0x96t 0x3t 0x0t 0x0t
        0x99t 0x3t 0x0t 0x0t
        0x9ct 0x3t 0x0t 0x0t
        0x9ft 0x3t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0xa5t 0x3t 0x0t 0x0t
        0xa8t 0x3t 0x0t 0x0t
        0xabt 0x3t 0x0t 0x0t
        0xaet 0x3t 0x0t 0x0t
        0xb1t 0x3t 0x0t 0x0t
        0xb4t 0x3t 0x0t 0x0t
        0xb7t 0x3t 0x0t 0x0t
        0xbat 0x3t 0x0t 0x0t
        0xbdt 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeet 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf4t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
        0xfat 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x3t 0x4t 0x0t 0x0t
        0x6t 0x4t 0x0t 0x0t
        0x9t 0x4t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xft 0x4t 0x0t 0x0t
        0x12t 0x4t 0x0t 0x0t
        0x15t 0x4t 0x0t 0x0t
        0x18t 0x4t 0x0t 0x0t
        0x1bt 0x4t 0x0t 0x0t
        0x1et 0x4t 0x0t 0x0t
        0x21t 0x4t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0x4ft 0x4t 0x0t 0x0t
        0x52t 0x4t 0x0t 0x0t
        0x55t 0x4t 0x0t 0x0t
        0x58t 0x4t 0x0t 0x0t
        0x5bt 0x4t 0x0t 0x0t
        0x5et 0x4t 0x0t 0x0t
        0x61t 0x4t 0x0t 0x0t
        0x64t 0x4t 0x0t 0x0t
        0x67t 0x4t 0x0t 0x0t
        0x6at 0x4t 0x0t 0x0t
        0x6dt 0x4t 0x0t 0x0t
        0x70t 0x4t 0x0t 0x0t
        0x73t 0x4t 0x0t 0x0t
        0x76t 0x4t 0x0t 0x0t
        0x79t 0x4t 0x0t 0x0t
        0x7ct 0x4t 0x0t 0x0t
        0x7ft 0x4t 0x0t 0x0t
        0x82t 0x4t 0x0t 0x0t
        0x85t 0x4t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0xb3t 0x4t 0x0t 0x0t
        0xb6t 0x4t 0x0t 0x0t
        0xb9t 0x4t 0x0t 0x0t
        0xbct 0x4t 0x0t 0x0t
        0xbft 0x4t 0x0t 0x0t
        0xc2t 0x4t 0x0t 0x0t
        0xc5t 0x4t 0x0t 0x0t
        0xc8t 0x4t 0x0t 0x0t
        0xcbt 0x4t 0x0t 0x0t
        0xcet 0x4t 0x0t 0x0t
        0xd1t 0x4t 0x0t 0x0t
        0xd4t 0x4t 0x0t 0x0t
        0xd7t 0x4t 0x0t 0x0t
        0xdat 0x4t 0x0t 0x0t
        0xddt 0x4t 0x0t 0x0t
        0xe0t 0x4t 0x0t 0x0t
        0xe3t 0x4t 0x0t 0x0t
        0xe6t 0x4t 0x0t 0x0t
        0xe9t 0x4t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
        0x17t 0x5t 0x0t 0x0t
        0x1at 0x5t 0x0t 0x0t
        0x1dt 0x5t 0x0t 0x0t
        0x20t 0x5t 0x0t 0x0t
        0x23t 0x5t 0x0t 0x0t
        0x26t 0x5t 0x0t 0x0t
        0x29t 0x5t 0x0t 0x0t
        0x2ct 0x5t 0x0t 0x0t
        0x2ft 0x5t 0x0t 0x0t
        0x32t 0x5t 0x0t 0x0t
        0x35t 0x5t 0x0t 0x0t
        0x38t 0x5t 0x0t 0x0t
        0x3bt 0x5t 0x0t 0x0t
        0x3et 0x5t 0x0t 0x0t
        0x41t 0x5t 0x0t 0x0t
        0x44t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x4at 0x5t 0x0t 0x0t
        0x4dt 0x5t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x7bt 0x5t 0x0t 0x0t
        0x7et 0x5t 0x0t 0x0t
        0x81t 0x5t 0x0t 0x0t
        0x84t 0x5t 0x0t 0x0t
        0x87t 0x5t 0x0t 0x0t
        0x8at 0x5t 0x0t 0x0t
        0x8dt 0x5t 0x0t 0x0t
        0x90t 0x5t 0x0t 0x0t
        0x93t 0x5t 0x0t 0x0t
        0x96t 0x5t 0x0t 0x0t
        0x99t 0x5t 0x0t 0x0t
        0x9ct 0x5t 0x0t 0x0t
        0x9ft 0x5t 0x0t 0x0t
        0xa2t 0x5t 0x0t 0x0t
        0xa5t 0x5t 0x0t 0x0t
        0xa8t 0x5t 0x0t 0x0t
        0xabt 0x5t 0x0t 0x0t
        0xaet 0x5t 0x0t 0x0t
        0xb1t 0x5t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xdft 0x5t 0x0t 0x0t
        0xe2t 0x5t 0x0t 0x0t
        0xe5t 0x5t 0x0t 0x0t
        0xe8t 0x5t 0x0t 0x0t
        0xebt 0x5t 0x0t 0x0t
        0xeet 0x5t 0x0t 0x0t
        0xf1t 0x5t 0x0t 0x0t
        0xf4t 0x5t 0x0t 0x0t
        0xf7t 0x5t 0x0t 0x0t
        0xfat 0x5t 0x0t 0x0t
        0xfdt 0x5t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
        0x3t 0x6t 0x0t 0x0t
        0x6t 0x6t 0x0t 0x0t
        0x9t 0x6t 0x0t 0x0t
        0xct 0x6t 0x0t 0x0t
        0xft 0x6t 0x0t 0x0t
        0x12t 0x6t 0x0t 0x0t
        0x15t 0x6t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
        0x43t 0x6t 0x0t 0x0t
        0x46t 0x6t 0x0t 0x0t
        0x49t 0x6t 0x0t 0x0t
        0x4ct 0x6t 0x0t 0x0t
        0x4ft 0x6t 0x0t 0x0t
        0x52t 0x6t 0x0t 0x0t
        0x55t 0x6t 0x0t 0x0t
        0x58t 0x6t 0x0t 0x0t
        0x5bt 0x6t 0x0t 0x0t
        0x5et 0x6t 0x0t 0x0t
        0x61t 0x6t 0x0t 0x0t
        0x64t 0x6t 0x0t 0x0t
        0x67t 0x6t 0x0t 0x0t
        0x6at 0x6t 0x0t 0x0t
        0x6dt 0x6t 0x0t 0x0t
        0x70t 0x6t 0x0t 0x0t
        0x73t 0x6t 0x0t 0x0t
        0x76t 0x6t 0x0t 0x0t
        0x79t 0x6t 0x0t 0x0t
        0xa4t 0x6t 0x0t 0x0t
        0xa7t 0x6t 0x0t 0x0t
        0xaat 0x6t 0x0t 0x0t
        0xadt 0x6t 0x0t 0x0t
        0xb0t 0x6t 0x0t 0x0t
        0xb4t 0x6t 0x0t 0x0t
        0xb6t 0x6t 0x0t 0x0t
        0xb9t 0x6t 0x0t 0x0t
        0xbct 0x6t 0x0t 0x0t
        0xbft 0x6t 0x0t 0x0t
        0xc2t 0x6t 0x0t 0x0t
        0xc5t 0x6t 0x0t 0x0t
        0xc8t 0x6t 0x0t 0x0t
        0xcbt 0x6t 0x0t 0x0t
        0xcet 0x6t 0x0t 0x0t
        0xd1t 0x6t 0x0t 0x0t
        0xd4t 0x6t 0x0t 0x0t
        0xd7t 0x6t 0x0t 0x0t
        0xdat 0x6t 0x0t 0x0t
        0xddt 0x6t 0x0t 0x0t
        0x8t 0x7t 0x0t 0x0t
        0xbt 0x7t 0x0t 0x0t
        0xet 0x7t 0x0t 0x0t
        0x11t 0x7t 0x0t 0x0t
        0x14t 0x7t 0x0t 0x0t
        0x17t 0x7t 0x0t 0x0t
        0x1at 0x7t 0x0t 0x0t
        0x1dt 0x7t 0x0t 0x0t
        0x20t 0x7t 0x0t 0x0t
        0x23t 0x7t 0x0t 0x0t
        0x26t 0x7t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x2ct 0x7t 0x0t 0x0t
        0x2ft 0x7t 0x0t 0x0t
        0x32t 0x7t 0x0t 0x0t
        0x35t 0x7t 0x0t 0x0t
        0x38t 0x7t 0x0t 0x0t
        0x3bt 0x7t 0x0t 0x0t
        0x3et 0x7t 0x0t 0x0t
        0x41t 0x7t 0x0t 0x0t
        0x6ct 0x7t 0x0t 0x0t
        0x6ft 0x7t 0x0t 0x0t
        0x72t 0x7t 0x0t 0x0t
        0x75t 0x7t 0x0t 0x0t
        0x78t 0x7t 0x0t 0x0t
        0x7bt 0x7t 0x0t 0x0t
        0x7et 0x7t 0x0t 0x0t
        0x81t 0x7t 0x0t 0x0t
        0x84t 0x7t 0x0t 0x0t
        0x87t 0x7t 0x0t 0x0t
        0x8at 0x7t 0x0t 0x0t
        0x8dt 0x7t 0x0t 0x0t
        0x90t 0x7t 0x0t 0x0t
        0x93t 0x7t 0x0t 0x0t
        0x96t 0x7t 0x0t 0x0t
        0x99t 0x7t 0x0t 0x0t
        0x9ct 0x7t 0x0t 0x0t
        0x9ft 0x7t 0x0t 0x0t
        0xa2t 0x7t 0x0t 0x0t
        0xa5t 0x7t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xd3t 0x7t 0x0t 0x0t
        0xd6t 0x7t 0x0t 0x0t
        0xd9t 0x7t 0x0t 0x0t
        0xdct 0x7t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0xe2t 0x7t 0x0t 0x0t
        0xe5t 0x7t 0x0t 0x0t
        0xe8t 0x7t 0x0t 0x0t
        0xebt 0x7t 0x0t 0x0t
        0xeet 0x7t 0x0t 0x0t
        0xf1t 0x7t 0x0t 0x0t
        0xf4t 0x7t 0x0t 0x0t
        0xf7t 0x7t 0x0t 0x0t
        0xfat 0x7t 0x0t 0x0t
        0xfdt 0x7t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x3t 0x8t 0x0t 0x0t
        0x6t 0x8t 0x0t 0x0t
        0x9t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method private InitAutoUpdate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 362
    sget-object v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autoUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    return-void
.end method

.method private checkTime()Z
    .locals 1

    .prologue
    .line 520
    const-string v0, "checkTime"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 522
    iget v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v0, :pswitch_data_0

    .line 540
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 525
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataFromDB(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "bTryAgain10"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    .line 341
    const-string v2, "lastUpdateTime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    .line 342
    const-string v2, "tryTimes"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 343
    const-string v2, "autoUpdateInit"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    .local v0, autoUpdateInit:Z
    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->InitAutoUpdate(Landroid/content/Context;)V

    .line 347
    :cond_0
    const-string v2, "autoUpdate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    .line 348
    const-string v2, "updateSuccess"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    .line 349
    const-string v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    .line 350
    const-string v2, "WLANOnly"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bTryAgain10Minutes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastUpdateTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumberLocatorDownloader.tryTimes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bUpdateSuccess :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoUpdate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWLANOnly :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private getLastUpdateTime()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 399
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 402
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 406
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    move-object v2, v3

    .line 410
    :cond_2
    :goto_2
    return-object v2

    .line 407
    :cond_3
    iget-object v1, v0, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    .line 408
    .local v1, time:Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, yymmdd:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    move-object v2, v3

    goto :goto_2

    .line 403
    .end local v1           #time:Ljava/lang/String;
    .end local v2           #yymmdd:[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 397
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getLatestTime()I
    .locals 11

    .prologue
    .line 445
    const-string v6, "getLatestTime"

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, autoUpdateTime:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v1

    .line 448
    .local v1, currentTime:I
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLastUpdateTime()[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-direct {p0, v6, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateDate([Ljava/lang/String;I)[I

    move-result-object v5

    .line 449
    .local v5, updateDate:[I
    iget v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v6, :pswitch_data_0

    .line 490
    :goto_0
    add-int/lit16 v6, v0, -0x4b0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4037

    mul-double/2addr v7, v9

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x404d800000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int v0, v6, v7

    .line 491
    return v0

    .line 452
    :pswitch_0
    if-eqz v5, :cond_0

    .line 453
    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    .line 454
    .local v2, index1:I
    aget v0, v5, v2

    .line 455
    goto :goto_0

    .line 456
    .end local v2           #index1:I
    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    .line 457
    .restart local v2       #index1:I
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    aget v0, v6, v2

    .line 459
    goto :goto_0

    .line 461
    .end local v2           #index1:I
    :pswitch_1
    if-eqz v5, :cond_1

    .line 462
    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    .line 463
    .local v3, index3:I
    aget v0, v5, v3

    .line 464
    goto :goto_0

    .line 465
    .end local v3           #index3:I
    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    .line 466
    .restart local v3       #index3:I
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    aget v0, v6, v3

    .line 468
    goto :goto_0

    .line 470
    .end local v3           #index3:I
    :pswitch_2
    if-eqz v5, :cond_2

    .line 471
    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    .line 472
    .local v4, index6:I
    aget v0, v5, v4

    .line 473
    goto :goto_0

    .line 474
    .end local v4           #index6:I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    .line 475
    .restart local v4       #index6:I
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    aget v0, v6, v4

    .line 477
    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLatestTimeSuffix([II)I
    .locals 6
    .parameter "date"
    .parameter "currentTime"

    .prologue
    .line 496
    const-string v4, "getLatestTimeSuffix"

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, index:I
    array-length v4, p1

    new-array v0, v4, [I

    .line 499
    .local v0, dateEveDiff:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 500
    aget v4, p1, v1

    sub-int v4, p2, v4

    aput v4, v0, v1

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dateEveDiff[] is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 505
    aget v4, v0, v1

    if-gez v4, :cond_2

    .line 504
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    :cond_2
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 509
    .local v3, min:I
    aget v4, v0, v1

    if-le v3, v4, :cond_1

    .line 510
    aget v3, v0, v1

    .line 511
    move v2, v1

    goto :goto_2

    .line 515
    .end local v3           #min:I
    :cond_3
    return v2
.end method

.method private isNetConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 286
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-eqz v1, :cond_2

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isSIMNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 291
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-nez v1, :cond_0

    .line 295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTime([I)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 544
    const-string v2, "isTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v0

    .line 546
    .local v0, currentTime:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in isTime()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 548
    aget v2, p1, v1

    if-ne v2, v0, :cond_0

    .line 549
    const/4 v2, 0x1

    .line 552
    :goto_1
    return v2

    .line 547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isVersionAndDBFileValid()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v5, :cond_4

    .line 658
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v6, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    .line 659
    .local v2, mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    if-eqz v2, :cond_4

    .line 660
    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_0

    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string v6, "20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_2

    .line 663
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVersionAndDBFileValid - mVersionInfo :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 684
    .end local v2           #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :goto_0
    return v3

    .line 666
    .restart local v2       #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, dbFile:Ljava/io/File;
    iget-wide v5, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVersionAndDBFileValid - mVersionInfo.dbSize :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbFile.length() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 672
    :cond_3
    new-instance v1, Lcom/android/phone/callsettings/DownloadFileInfo;

    invoke-direct {v1}, Lcom/android/phone/callsettings/DownloadFileInfo;-><init>()V

    .line 673
    .local v1, file:Lcom/android/phone/callsettings/DownloadFileInfo;
    const-string v5, "/data/data/com.android.phone/HomeLocationDB.bin"

    iput-object v5, v1, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    .line 674
    iget-wide v5, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iput-wide v5, v1, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    .line 675
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V

    .line 676
    invoke-virtual {v1}, Lcom/android/phone/callsettings/DownloadFileInfo;->isValidFile()Z

    move-result v5

    if-nez v5, :cond_4

    .line 677
    const-string v4, "PNL DB file is not valid"

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #dbFile:Ljava/io/File;
    .end local v1           #file:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v2           #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_4
    move v3, v4

    .line 684
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 688
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 692
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 693
    return-void
.end method

.method private makeTest()V
    .locals 7

    .prologue
    .line 607
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 608
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 609
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v3, v5, 0x2710

    .line 612
    .local v3, headTime:I
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    .line 613
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 614
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    .line 613
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method private needUpdateDB()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 299
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateForDownloadfailed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "needUpdateForDownloadfailed"

    invoke-direct {p0, v3, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 317
    :goto_0
    return v2

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTime()I

    move-result v0

    .line 304
    .local v0, autoUpdateTime:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoUpdateTime is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateExp(I)Z

    move-result v1

    .line 308
    .local v1, updateExp:Z
    if-eqz v1, :cond_1

    .line 309
    const-string v3, "updateExp is true"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    const-string v3, "checkTime"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v2, "needUpdateDB is false"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 317
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needUpdateForDownloadfailed()Z
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    sub-int v0, v2, v3

    .line 374
    .local v0, gapTime:I
    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 375
    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    if-eqz v2, :cond_1

    .line 376
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    if-ge v1, v2, :cond_1

    .line 377
    mul-int/lit8 v2, v1, 0xa

    if-ne v0, v2, :cond_0

    .line 378
    const/4 v2, 0x1

    .line 382
    .end local v1           #i:I
    :goto_1
    return v2

    .line 376
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDate([Ljava/lang/String;I)[I
    .locals 10
    .parameter "yymmdd"
    .parameter "updateType"

    .prologue
    .line 414
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 442
    :cond_0
    :goto_0
    return-object v2

    .line 415
    :cond_1
    const/4 v2, 0x0

    .line 416
    .local v2, result:[I
    const/4 v4, 0x3

    new-array v3, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 417
    .local v3, temp:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 418
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 419
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 421
    :pswitch_0
    const/16 v4, 0xc

    new-array v2, v4, [I

    .line 422
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    .line 423
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 424
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    .end local v1           #i:I
    :pswitch_1
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 429
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 430
    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 431
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    .end local v1           #i:I
    :pswitch_2
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 436
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 437
    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 438
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateExp(I)Z
    .locals 1
    .parameter "autoUpdateTime"

    .prologue
    .line 328
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    if-ge v0, p1, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkDB()V
    .locals 3

    .prologue
    .line 643
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    const-string v1, "checkDB - DB or version file is not correct, reset to default DB and version file"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 645
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V

    .line 649
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkNetWork(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 557
    if-nez p1, :cond_1

    .line 558
    const-string v9, "context null"

    invoke-direct {p0, v9, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 601
    :cond_0
    :goto_0
    return v7

    .line 561
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 564
    .local v1, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 567
    .local v4, networkInfoWifi:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_4

    .line 569
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 574
    .local v6, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v6, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v9, v6, :cond_3

    .line 575
    :cond_2
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    .line 583
    .end local v6           #wifiState:Landroid/net/NetworkInfo$State;
    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 585
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 589
    .local v5, type:I
    if-ne v8, v5, :cond_5

    :goto_2
    move v7, v8

    .line 598
    goto :goto_0

    .line 577
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    .end local v5           #type:I
    .restart local v6       #wifiState:Landroid/net/NetworkInfo$State;
    :cond_3
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_1

    .line 580
    .end local v6           #wifiState:Landroid/net/NetworkInfo$State;
    :cond_4
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_1

    .line 593
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    .restart local v5       #type:I
    :cond_5
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    .line 594
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, defaultHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 596
    .local v3, defaultPort:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultHost:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "defaultPort:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCurrentTime()I
    .locals 3

    .prologue
    .line 386
    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 388
    .local v1, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 164
    const-string v0, "onReceive"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 166
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    const-string v0, "Phone number locator feature is dsiabled"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    if-eqz p1, :cond_3

    .line 172
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 175
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    .line 180
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 181
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_BOOT_COMPLETED)"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 182
    if-nez p1, :cond_4

    .line 183
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :cond_4
    const-string v0, "ultimate_standby_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->isUSMEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    const-string v0, "didn\'t start auto update, usm is on"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 194
    :cond_5
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 195
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    .line 197
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_6

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkDB()V

    goto :goto_0

    .line 201
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_TIME_TICK) - timetickCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 204
    if-nez p1, :cond_8

    .line 205
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v0, "ultimate_standby_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->isUSMEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    const-string v0, "didn\'t start auto update, usm is on"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 216
    :cond_9
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    .line 217
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_a

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 219
    const-string v0, "stopService PhoneNumberLocatorRegisterService.class because receive time tick over than 3 times"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 220
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    goto/16 :goto_0

    .line 224
    :cond_a
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_b

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService PhoneNumberLocatorDownloader.sDownloadFailTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 231
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->makeTest()V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 235
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-nez v0, :cond_c

    .line 236
    const-string v0, "auto update is not available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 241
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 242
    const-string v0, "SIM and wifi both are\'t available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 243
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 245
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver context.stopService"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 249
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    .line 251
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "bNeedUpdate is true"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    goto/16 :goto_0

    .line 257
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 259
    if-nez p1, :cond_f

    .line 260
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 264
    :cond_f
    const-string v0, "ultimate_standby_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 265
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->isUSMEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    const-string v0, "didn\'t start auto update, usm is on"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 270
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    .line 272
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    .line 273
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 274
    sput-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 278
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public startCopyThread()V
    .locals 3

    .prologue
    .line 621
    :try_start_0
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;)V

    .line 631
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
