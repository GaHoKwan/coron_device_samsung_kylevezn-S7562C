.class public final Lnbisdk/lu;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/qq;


# static fields
.field private static rq:Lnbisdk/lu;

.field private static rr:Ljava/lang/String;


# instance fields
.field private eF:J

.field private lK:Z

.field private mContext:Landroid/content/Context;

.field private rA:I

.field private rB:J

.field private rC:Landroid/telephony/PhoneStateListener;

.field private rs:Landroid/telephony/TelephonyManager;

.field private rt:I

.field private ru:I

.field private rv:I

.field private rw:I

.field private rx:I

.field private ry:I

.field private rz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/lu;->rq:Lnbisdk/lu;

    const-string v0, "verizon"

    sput-object v0, Lnbisdk/lu;->rr:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    iput v0, p0, Lnbisdk/lu;->rw:I

    iput v0, p0, Lnbisdk/lu;->rx:I

    iput v0, p0, Lnbisdk/lu;->ry:I

    iput v0, p0, Lnbisdk/lu;->rz:I

    iput v0, p0, Lnbisdk/lu;->rA:I

    iput-wide v2, p0, Lnbisdk/lu;->rB:J

    iput-boolean v0, p0, Lnbisdk/lu;->lK:Z

    iput-wide v2, p0, Lnbisdk/lu;->eF:J

    iput-object v1, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lnbisdk/cv;

    invoke-direct {v0, p0}, Lnbisdk/cv;-><init>(Lnbisdk/lu;)V

    iput-object v0, p0, Lnbisdk/lu;->rC:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/lu;->lK:Z

    :cond_1
    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lnbisdk/lu;->rC:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/lu;I)I
    .locals 0

    iput p1, p0, Lnbisdk/lu;->rA:I

    return p1
.end method

.method static synthetic a(Lnbisdk/lu;)J
    .locals 2

    iget-wide v0, p0, Lnbisdk/lu;->eF:J

    return-wide v0
.end method

.method static synthetic a(Lnbisdk/lu;J)J
    .locals 0

    iput-wide p1, p0, Lnbisdk/lu;->eF:J

    return-wide p1
.end method

.method static synthetic b(Lnbisdk/lu;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/lu;->jA()V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lnbisdk/lu;
    .locals 1

    sget-object v0, Lnbisdk/lu;->rq:Lnbisdk/lu;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/lu;

    invoke-direct {v0, p0}, Lnbisdk/lu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/lu;->rq:Lnbisdk/lu;

    :cond_0
    sget-object v0, Lnbisdk/lu;->rq:Lnbisdk/lu;

    return-object v0
.end method

.method private jA()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lnbisdk/lu;->lK:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/lu;->jx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/lu;->rB:J

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, p0, Lnbisdk/lu;->rw:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lnbisdk/lu;->rx:I

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnbisdk/lu;->ry:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnbisdk/lu;->rz:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iput v2, p0, Lnbisdk/lu;->rw:I

    iput v2, p0, Lnbisdk/lu;->rx:I

    iput v2, p0, Lnbisdk/lu;->ry:I

    iput v2, p0, Lnbisdk/lu;->rz:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, p0, Lnbisdk/lu;->rt:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    iput v1, p0, Lnbisdk/lu;->ru:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lnbisdk/lu;->rv:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lnbisdk/lu;->rt:I

    iput v2, p0, Lnbisdk/lu;->ru:I

    iput v2, p0, Lnbisdk/lu;->rv:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lnbisdk/lu;->rC:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iput-object v3, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    sput-object v3, Lnbisdk/lu;->rq:Lnbisdk/lu;

    return-void
.end method

.method public final jB()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnbisdk/lu;->rr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/lu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "location_providers_allowed"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vzw_lbs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final jx()I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lnbisdk/lu;->lK:Z

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnbisdk/lu;->rs:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_3

    const-class v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jy()Lnbisdk/jn;
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnbisdk/lu;->lK:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Lnbisdk/jn;

    const/16 v1, 0x37

    const/16 v2, 0x1691

    const/16 v3, -0x57

    invoke-direct {v0, v4, v1, v2, v3}, Lnbisdk/jn;-><init>(IIII)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnbisdk/lu;->jx()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lnbisdk/lu;->rB:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-direct {p0}, Lnbisdk/lu;->jA()V

    :cond_2
    iget v1, p0, Lnbisdk/lu;->ru:I

    if-nez v1, :cond_3

    iget v1, p0, Lnbisdk/lu;->rv:I

    if-nez v1, :cond_3

    iget v1, p0, Lnbisdk/lu;->rt:I

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {v0}, Lnbisdk/lu;->g(Landroid/content/Context;)Lnbisdk/lu;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, v0, Lnbisdk/lu;->rA:I

    iput v0, p0, Lnbisdk/lu;->rA:I

    :cond_4
    new-instance v0, Lnbisdk/jn;

    iget v1, p0, Lnbisdk/lu;->ru:I

    iget v2, p0, Lnbisdk/lu;->rv:I

    iget v3, p0, Lnbisdk/lu;->rt:I

    iget v4, p0, Lnbisdk/lu;->rA:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/jn;-><init>(IIII)V

    goto :goto_0
.end method

.method public final jz()Lnbisdk/gz;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnbisdk/lu;->jx()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lnbisdk/lu;->rB:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lnbisdk/lu;->jA()V

    :cond_0
    iget v1, p0, Lnbisdk/lu;->ry:I

    if-nez v1, :cond_2

    iget v1, p0, Lnbisdk/lu;->rz:I

    if-nez v1, :cond_2

    iget v1, p0, Lnbisdk/lu;->rx:I

    if-nez v1, :cond_2

    iget v1, p0, Lnbisdk/lu;->rw:I

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v0}, Lnbisdk/lu;->g(Landroid/content/Context;)Lnbisdk/lu;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Lnbisdk/lu;->rA:I

    iput v0, p0, Lnbisdk/lu;->rA:I

    :cond_3
    new-instance v0, Lnbisdk/gz;

    iget v1, p0, Lnbisdk/lu;->ry:I

    iget v2, p0, Lnbisdk/lu;->rz:I

    iget v3, p0, Lnbisdk/lu;->rx:I

    iget v4, p0, Lnbisdk/lu;->rw:I

    iget v5, p0, Lnbisdk/lu;->rA:I

    invoke-direct/range {v0 .. v5}, Lnbisdk/gz;-><init>(IIIII)V

    goto :goto_0
.end method
