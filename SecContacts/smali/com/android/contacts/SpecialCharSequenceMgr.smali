.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field static IskeystringEnaled:Z

.field private static KeystringBlockList:[Ljava/lang/String;

.field private static PersoKeystring:[Ljava/lang/String;

.field private static SellOutSMS:[Ljava/lang/String;

.field private static blockedKeystring:[Ljava/lang/String;

.field private static intentNameVendor:[Ljava/lang/String;

.field private static keystring:[Ljava/lang/String;

.field private static keystring_spr:[Ljava/lang/String;

.field private static keystring_vzw:[Ljava/lang/String;

.field private static selectedSIMID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    sput v3, Lcom/android/contacts/SpecialCharSequenceMgr;->selectedSIMID:I

    .line 81
    sput-boolean v3, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#1111#"

    aput-object v1, v0, v3

    const-string v1, "*#2222#"

    aput-object v1, v0, v4

    const-string v1, "*#1234#"

    aput-object v1, v0, v5

    const-string v1, "*#99732#"

    aput-object v1, v0, v6

    const-string v1, "*2767*3855#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#9900#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#87976633#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#2684#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#4732#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#46744674#"

    aput-object v1, v0, v3

    const-string v1, "*#1111#"

    aput-object v1, v0, v4

    const-string v1, "*#2222#"

    aput-object v1, v0, v5

    const-string v1, "*#1234#"

    aput-object v1, v0, v6

    const-string v1, "*#12580*369#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#9099#"

    aput-object v1, v0, v3

    const-string v1, "*#4238378#"

    aput-object v1, v0, v4

    const-string v1, "*#7594#"

    aput-object v1, v0, v5

    const-string v1, "*#272886#"

    aput-object v1, v0, v6

    const-string v1, "*#0002*28347#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    .line 129
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**33284"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "**367738"

    aput-object v1, v0, v5

    const-string v1, "47*68#13580"

    aput-object v1, v0, v6

    const-string v1, "**87284"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "##2539#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "##786#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "##25327#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "**583"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "**7838"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "**673"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "**772"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    .line 146
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "##33284#"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "##367738#"

    aput-object v1, v0, v5

    const-string v1, "3215987123580"

    aput-object v1, v0, v6

    const-string v1, "##3424#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "##2539#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "##786#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "##25327#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "**583"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "**7838"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "**673"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    .line 163
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    aput-object v1, v0, v3

    const-string v1, "DATA"

    aput-object v1, v0, v4

    const-string v1, "DNSSET"

    aput-object v1, v0, v5

    const-string v1, "TESTMODE"

    aput-object v1, v0, v6

    const-string v1, "PUTIL"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AKEY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RTN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSCLRX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SCRTN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TTY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTEMODE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "STEALTHMODE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MRD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NAMBASIC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameVendor:[Ljava/lang/String;

    .line 181
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    .line 187
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method static IsBlockedKeyString(Ljava/lang/String;)Z
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    .line 624
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 625
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    if-nez v0, :cond_0

    .line 627
    sput-boolean v1, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 633
    :cond_0
    :goto_1
    return v1

    .line 624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 598
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 599
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const/4 v1, 0x1

    .line 603
    :goto_1
    return v1

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeystringBlockList(Ljava/lang/String;)Z
    .locals 3
    .parameter "input"

    .prologue
    .line 638
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 639
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*#*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    :cond_0
    const/4 v1, 0x1

    .line 649
    :goto_1
    return v1

    .line 638
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsPersoKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 662
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 663
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    const/4 v1, 0x1

    .line 667
    :goto_1
    return v1

    .line 662
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsSellOutKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 654
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    const/4 v1, 0x1

    .line 658
    :goto_1
    return v1

    .line 653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getIndexKeyStringSPR(Ljava/lang/String;)I
    .locals 2
    .parameter "input"

    .prologue
    .line 405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 406
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    .end local v0           #i:I
    :goto_1
    return v0

    .line 405
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getIndexKeyStringVZW(Ljava/lang/String;)I
    .locals 2
    .parameter "input"

    .prologue
    .line 397
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 398
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    .end local v0           #i:I
    :goto_1
    return v0

    .line 397
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 15
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 691
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 693
    .local v13, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v13}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    const/4 v2, 0x0

    .line 1039
    :goto_0
    return v2

    .line 697
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 698
    .local v14, len:I
    const/4 v2, 0x1

    if-le v14, v2, :cond_8

    const/4 v2, 0x5

    if-ge v14, v2, :cond_8

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 699
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 701
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "CURRENT_NETWORK"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 702
    .local v10, currentNetwork:I
    if-nez v10, :cond_3

    .line 703
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is GSM"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 706
    .local v9, Fdn_Enable:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 718
    .local v12, index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 721
    .local v1, handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 725
    .local v3, sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 726
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 729
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 730
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 731
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 733
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 734
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 735
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 742
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 747
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12           #index:I
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 757
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 760
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 764
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 765
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 768
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 769
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 770
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 772
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 773
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 774
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 781
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 786
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9           #Fdn_Enable:Ljava/lang/String;
    .end local v12           #index:I
    :cond_2
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is CDMA"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 797
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 800
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 804
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 805
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 808
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 809
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 810
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 812
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 813
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 814
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 821
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 828
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12           #index:I
    :cond_3
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is GSM"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet_sim2"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 830
    .restart local v9       #Fdn_Enable:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 832
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 842
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 845
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 849
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 850
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 853
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 854
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 855
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 857
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 858
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 859
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 866
    const/4 v2, -0x2

    const-string v4, "content://icc2/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 871
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12           #index:I
    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 881
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 884
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 888
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 889
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 892
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 893
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 894
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 896
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 897
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 898
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 905
    const/4 v2, -0x1

    const-string v4, "content://icc2/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 914
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9           #Fdn_Enable:Ljava/lang/String;
    .end local v10           #currentNetwork:I
    .end local v12           #index:I
    :cond_5
    const-string v2, "feature_spr"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 915
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 918
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 920
    .restart local v9       #Fdn_Enable:Ljava/lang/String;
    if-eqz v9, :cond_9

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 922
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 937
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 940
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 944
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 945
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 948
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 949
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 950
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 953
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 954
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 955
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 961
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 963
    const/4 v2, -0x2

    const-string v4, "content://iccmsim/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 969
    :cond_7
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1031
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9           #Fdn_Enable:Ljava/lang/String;
    .end local v12           #index:I
    :catch_0
    move-exception v11

    .line 1032
    .local v11, ex:Ljava/lang/NumberFormatException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "NumberFormatException  in handleAdnEntry()"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :cond_8
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 977
    .restart local v9       #Fdn_Enable:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 992
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 995
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 999
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1000
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1003
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1004
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1005
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1008
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1009
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1010
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1016
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1018
    const/4 v2, -0x1

    const-string v4, "content://iccmsim/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1024
    :cond_a
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 910
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9           #Fdn_Enable:Ljava/lang/String;
    .end local v12           #index:I
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z
    .locals 15
    .parameter "context"
    .parameter "input"
    .parameter "textField"
    .parameter "selectedSIMID"
    .parameter "isDualSim"

    .prologue
    .line 1055
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 1057
    .local v13, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v13}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    const/4 v2, 0x0

    .line 1238
    :goto_0
    return v2

    .line 1061
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 1062
    .local v14, len:I
    const/4 v2, 0x1

    if-le v14, v2, :cond_4

    const/4 v2, 0x5

    if-ge v14, v2, :cond_4

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1065
    .local v9, Fdn_Enable:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1067
    .local v10, SIM2_Fdn_Enable:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    if-eqz v10, :cond_1

    const-string v2, "on"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1084
    .local v12, index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1087
    .local v1, handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1091
    .local v3, sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1092
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1095
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1096
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1097
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1100
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1101
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1102
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1108
    const/4 v2, -0x2

    const-string v4, "content://icc2/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1113
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12           #index:I
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_2

    if-eqz v9, :cond_2

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1130
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1133
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1137
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1138
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1141
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1142
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1143
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1146
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1147
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1148
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1157
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1164
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12           #index:I
    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1179
    .restart local v12       #index:I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1182
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1186
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1187
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1190
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1191
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a9

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1192
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1195
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1196
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1197
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1204
    if-eqz v9, :cond_5

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1205
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 1206
    const/4 v2, -0x1

    const-string v4, "content://icc2/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1211
    :cond_3
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1231
    .end local v1           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9           #Fdn_Enable:Ljava/lang/String;
    .end local v10           #SIM2_Fdn_Enable:Ljava/lang/String;
    .end local v12           #index:I
    :catch_0
    move-exception v11

    .line 1232
    .local v11, ex:Ljava/lang/NumberFormatException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "NumberFormatException  in handleAdnEntry()"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1217
    .restart local v1       #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .restart local v3       #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .restart local v9       #Fdn_Enable:Ljava/lang/String;
    .restart local v10       #SIM2_Fdn_Enable:Ljava/lang/String;
    .restart local v12       #index:I
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 1218
    const/4 v2, -0x1

    :try_start_1
    const-string v4, "content://icc2/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1223
    :cond_6
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    .line 199
    :try_start_0
    const-string v1, ".*#\\*47.*#$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "ciq keycode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SpecialCharSequenceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is occured..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "input"

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z
    .locals 6
    .parameter "context"
    .parameter "input"
    .parameter "textField"
    .parameter "selectedSIMID"
    .parameter "isDualSim"

    .prologue
    .line 224
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;IZ)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    const/4 v1, 0x1

    .line 251
    :cond_1
    return v1
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;IZ)Z
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"
    .parameter "selectedSIMID"
    .parameter "isDualSim"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, dialString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 261
    .local v1, len:I
    invoke-static {p0, v2, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    :cond_0
    const/4 v2, 0x1

    .line 278
    :cond_1
    return v2
.end method

.method static handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    .line 285
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "handleCodeForAABUrlUpdate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v1, "*#222875#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.aab.activity.CHANGEAABURLBROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    const-string v1, "SpecialCharSequenceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCodeForAABUrlUpdate - sendBroadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x1

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    const/4 v2, 0x1

    .line 1255
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1259
    .local v0, phoneType:I
    if-ne v0, v2, :cond_0

    .line 1260
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 1268
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 1262
    .restart local v0       #phoneType:I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1263
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 1264
    goto :goto_0

    .line 1268
    .end local v0           #phoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 1242
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1244
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1251
    :cond_1
    :goto_0
    return v1

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Failed to handlePinMmi due to remote exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v6, 0x4

    const/16 v4, 0x8

    const/4 v2, 0x1

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    .local v1, len:I
    if-le v1, v4, :cond_0

    .line 313
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsBlockedKeyString(Ljava/lang/String;)Z

    .line 316
    :cond_0
    if-le v1, v4, :cond_1

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 322
    :cond_1
    if-le v1, v4, :cond_2

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 326
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-le v1, v4, :cond_3

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v3

    if-ne v3, v2, :cond_3

    sget-boolean v3, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v3, v2, :cond_3

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "keyPressValue"
    .parameter "id"

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method static handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 414
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, IMEIstr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 420
    .local v4, len:I
    const-string v5, "*#272*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, get:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v7, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 433
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 594
    .end local v2           #get:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return v5

    .line 440
    .restart local v2       #get:Ljava/lang/String;
    :cond_0
    const-string v5, "62826"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Natco"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_OperatorSpecificPreConfigKeyString"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 441
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v7, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 446
    goto :goto_0

    .line 471
    .end local v2           #get:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    if-le v4, v10, :cond_2

    .line 472
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsBlockedKeyString(Ljava/lang/String;)Z

    .line 476
    :cond_2
    if-le v4, v10, :cond_3

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, action:Ljava/lang/String;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Intent for Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent Data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 485
    goto/16 :goto_0

    .line 488
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    if-le v4, v12, :cond_6

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 489
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 494
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v5, v6

    .line 505
    goto/16 :goto_0

    .line 495
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 496
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 500
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 502
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 506
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    if-le v4, v12, :cond_9

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_9

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 508
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 511
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    move v5, v6

    .line 526
    goto/16 :goto_0

    .line 514
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 515
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 517
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    const-string v5, "SpecialCharSequenceMgr"

    const-string v7, "Intent sent!"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 520
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 522
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    const-string v5, "SpecialCharSequenceMgr"

    const-string v7, "Intent sent!"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 527
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    if-le v4, v12, :cond_c

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_c

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_c

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_c

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 529
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 532
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    move v5, v6

    .line 545
    goto/16 :goto_0

    .line 535
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 536
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 540
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 542
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 548
    .end local v3           #intent:Landroid/content/Intent;
    :cond_c
    if-le v4, v10, :cond_d

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_d

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_d

    .line 550
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 553
    goto/16 :goto_0

    .line 556
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d
    if-le v4, v10, :cond_e

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_e

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_e

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_e

    .line 558
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 560
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 561
    goto/16 :goto_0

    .line 574
    .end local v3           #intent:Landroid/content/Intent;
    :cond_e
    const/16 v5, 0xc

    if-le v4, v5, :cond_f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 575
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 577
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 578
    goto/16 :goto_0

    .line 579
    .end local v3           #intent:Landroid/content/Intent;
    :cond_f
    const/16 v5, 0xc

    if-le v4, v5, :cond_10

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_10

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 581
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 584
    goto/16 :goto_0

    .line 585
    .end local v3           #intent:Landroid/content/Intent;
    :cond_10
    const/16 v5, 0xc

    if-le v4, v5, :cond_11

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_11

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_11

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_11

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 587
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 589
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 590
    goto/16 :goto_0

    .line 594
    .end local v3           #intent:Landroid/content/Intent;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "input"

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 376
    .local v3, len:I
    const/4 v2, -0x1

    .line 377
    .local v2, keyStringIndex:I
    const-string v5, "ro.build.product"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, projectName:Ljava/lang/String;
    const-string v5, "d2vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "m3vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "jaspervzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->getIndexKeyStringVZW(Ljava/lang/String;)I

    move-result v2

    .line 384
    :cond_1
    :goto_0
    const/4 v5, 0x3

    if-le v3, v5, :cond_4

    const/4 v5, -0x1

    if-le v2, v5, :cond_4

    .line 385
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LTE Keystring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameVendor:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, action:Ljava/lang/String;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send Intent for Keystring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v5, 0x1

    .line 394
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v5

    .line 381
    :cond_2
    const-string v5, "d2spr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "m3spr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "goghspr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    :cond_3
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->getIndexKeyStringSPR(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 394
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static isKeyStringBlocked()Z
    .locals 5

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, imeiBlocked:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/factory/imei/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    :goto_0
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keystr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v2, 0x1

    .line 619
    :goto_1
    return v2

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_0

    .line 618
    .end local v0           #e1:Ljava/io/IOException;
    :cond_0
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 1304
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, imeiStr:Ljava/lang/String;
    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1308
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, imeisvStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1313
    .end local v2           #imeisvStr:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0096

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1319
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method

.method static showMEIDPanel(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 1322
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, meidStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1331
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method
