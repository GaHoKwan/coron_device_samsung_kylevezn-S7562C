.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field mFtBar:Landroid/widget/LinearLayout;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mImBar:Landroid/widget/LinearLayout;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field mIsObserverRegisted:Z

.field private mQueryUri:Landroid/net/Uri;

.field mRcsCursor:Landroid/database/Cursor;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mTelNumber:Ljava/lang/String;

.field private mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

.field private mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    .line 49
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    .line 112
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .line 113
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V

    .line 116
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    return-object p1
.end method

.method private autoBindUriGeneratorService()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 266
    :cond_0
    return-void
.end method

.method private generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "telNumber"

    .prologue
    .line 311
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v3, "generateTelUri(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-object v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 351
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 352
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method extractUIComponets()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f090300

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f090301

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f0902ff

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method public pinFillDataAtTheEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->autoBindUriGeneratorService()V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-nez v1, :cond_0

    .line 129
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v2, "Could not bind to IUriGeneratorService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 134
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    invoke-interface {v1, p1}, Lcom/samsung/rcs/urigenerator/IUriGeneratorService;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->registerObserver()V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    .line 157
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v2, "Exception using remote uri generator, reverting to deprecated method"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    goto :goto_1

    .line 153
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    goto :goto_2
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 260
    :cond_2
    return-void
.end method

.method query()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    .line 174
    return-void
.end method

.method readDataFromQuery()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 202
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 203
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 204
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 205
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 207
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 208
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "feature_tag"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, serviceTagNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "is_enabled"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, enabledNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 211
    .local v6, intentNameNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_category"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 214
    .local v5, intentCategoryNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "sip_uri"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, sipUriNo:I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, tag:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 221
    .local v0, enabled:I
    if-lez v0, :cond_2

    .line 223
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, sipUri:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, intentAction:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, intentCategory:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 231
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 232
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 236
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 237
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 238
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 241
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #intentAction:Ljava/lang/String;
    .end local v4           #intentCategory:Ljava/lang/String;
    .end local v8           #sipUri:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 244
    .end local v0           #enabled:I
    .end local v1           #enabledNo:I
    .end local v5           #intentCategoryNo:I
    .end local v6           #intentNameNo:I
    .end local v7           #serviceTagNo:I
    .end local v9           #sipUriNo:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    .line 182
    :cond_0
    return-void
.end method

.method updateUi()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
