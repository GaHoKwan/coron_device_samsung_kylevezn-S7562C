.class public Landroid/app/enterprise/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# static fields
.field public static final ACTION_SIM_CARD_CHANGED:Ljava/lang/String; = "android.intent.action.sec.SIM_CARD_CHANGED"

.field public static final EXTRA_SIM_CHANGE_INFO:Ljava/lang/String; = "simChangeInfo"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mClipboard:Landroid/content/ClipboardManager;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "MiscPolicy"

    sput-object v0, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 85
    iput-object p1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    .line 88
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addClipboardTextData(Ljava/lang/String;)Z
    .locals 2
    .parameter "clip"

    .prologue
    .line 743
    const-string v0, "MiscPolicy.addClipboardTextData"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 748
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "uri"
    .parameter "title"
    .parameter "iconBm"

    .prologue
    .line 468
    const-string v1, "MiscPolicy.addWebBookmarkBitmap"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 471
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkBitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 3
    .parameter "uri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 441
    const-string v1, "MiscPolicy.addWebBookmarkByteBuffer"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkByteBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .locals 3
    .parameter "statement"

    .prologue
    .line 515
    const-string v1, "MiscPolicy.changeLockScreenString"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 518
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->changeLockScreenString(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeLockScreenString"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearClipboardData()Z
    .locals 3

    .prologue
    .line 685
    const-string v1, "MiscPolicy.clearClipboardData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v1, :cond_0

    .line 687
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 690
    :cond_0
    const-string v1, "simple text"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 691
    .local v0, mClip:Landroid/content/ClipData;
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 692
    const/4 v1, 0x1

    return v1
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 492
    const-string v1, "MiscPolicy.deleteWebBookmark"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteWebBookmark"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    const-string v0, "MiscPolicy.getClipboardTextData"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 719
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    const-string v1, "MiscPolicy.getCurrentLockScreenString"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    :goto_0
    return-object v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getCurrentLockScreenString!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .locals 3

    .prologue
    .line 414
    const-string v1, "MiscPolicy.getLastSimChangeInfo"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 3

    .prologue
    .line 579
    const-string v1, "MiscPolicy.getSystemActiveFont"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemActiveFont()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 587
    :goto_0
    return-object v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemActiveFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemActiveFontSize()F
    .locals 3

    .prologue
    .line 829
    const-string v1, "MiscPolicy.getSystemActiveFontSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 830
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 832
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemActiveFontSize()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 837
    :goto_0
    return v1

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemFontSizes()[F
    .locals 3

    .prologue
    .line 862
    const-string v1, "MiscPolicy.getSystemFontSizes"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemFontSizes()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 870
    :goto_0
    return-object v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 597
    const-string v1, "MiscPolicy.getSystemFonts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getSystemFonts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 605
    :goto_0
    return-object v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemFonts!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 156
    const-string v0, "MiscPolicy.installCertificateWithType"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V

    .line 158
    return-void
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 319
    const-string v0, "MiscPolicy.isBluetoothEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isCameraEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 196
    const-string v0, "MiscPolicy.isCameraEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 1

    .prologue
    .line 400
    const-string v0, "MiscPolicy.isExternalStorageEncrypted"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isExternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 1

    .prologue
    .line 381
    const-string v0, "MiscPolicy.isInternalStorageEncrypted"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 237
    const-string v0, "MiscPolicy.isMicrophoneEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 278
    const-string v0, "MiscPolicy.isWiFiEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 302
    const-string v0, "MiscPolicy.setBluetoothState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setCameraState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 179
    const-string v0, "MiscPolicy.setCameraState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setCameraState(Z)Z

    move-result v0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 1
    .parameter "isEncrypt"

    .prologue
    .line 362
    const-string v0, "MiscPolicy.setExternalStorageEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setExternalStorageEncryption(Z)V

    .line 364
    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 1
    .parameter "isEncrypt"

    .prologue
    .line 341
    const-string v0, "MiscPolicy.setInternalStorageEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setInternalStorageEncryption(Z)V

    .line 343
    return-void
.end method

.method public setMicrophoneState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 220
    const-string v0, "MiscPolicy.setMicrophoneState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setMicrophoneState(Z)Z

    move-result v0

    return v0
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "mimeType"

    .prologue
    .line 107
    const-string v1, "MiscPolicy.setRingerBytes"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerBytes([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aRingtonefilePath"
    .parameter "aMmimeType"

    .prologue
    .line 126
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 560
    const-string v1, "MiscPolicy.setSystemActiveFont"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 568
    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setSystemFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSystemActiveFontSize(F)Z
    .locals 3
    .parameter "fontSize"

    .prologue
    .line 808
    const-string v1, "MiscPolicy.setSystemActiveFontSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 811
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setSystemActiveFontSize(F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 816
    :goto_0
    return v1

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 261
    const-string v0, "MiscPolicy.setWiFiState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Landroid/app/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method
