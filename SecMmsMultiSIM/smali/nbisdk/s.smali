.class public Lnbisdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/zo;


# instance fields
.field private O:Z

.field private aw:Lnbisdk/gv;

.field private ax:Ljava/lang/String;

.field private ay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/gv;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lnbisdk/s;->O:Z

    invoke-virtual {p0, p1}, Lnbisdk/s;->a(Lnbisdk/gv;)V

    return-void
.end method

.method static a(Lnbisdk/ev;Lnbisdk/gv;)Lnbisdk/ql;
    .locals 8

    const-wide/high16 v6, 0x1000

    const/4 v5, 0x1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    invoke-static {p0}, Lnbisdk/tt;->b(Lnbisdk/ev;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnbisdk/s;->b(Lnbisdk/gv;)Lnbisdk/ql;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lnbisdk/ze;

    const-string v1, "iden"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "credential"

    invoke-virtual {p1}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lnbisdk/gv;->gJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "NBNetworkCommon.getIdentTPSBody needs MDN."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v2, "mdn"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "min"

    const-string v2, "\u0000"

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform-id"

    const-string v2, "\u0000"

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    invoke-virtual {p1}, Lnbisdk/gv;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    invoke-virtual {p1}, Lnbisdk/gv;->aS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier"

    invoke-virtual {p1}, Lnbisdk/gv;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    const-string v2, "java"

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gps"

    new-array v2, v5, [B

    const/4 v3, 0x0

    aput-byte v5, v2, v3

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    const-string v1, "gwsid"

    invoke-virtual {p1, v1}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "gwsubid"

    invoke-virtual {v0, v2, v1}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {v6, v7}, Lnbisdk/jg;->i(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/ql;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v6, v7, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    goto/16 :goto_0
.end method

.method private static b(Lnbisdk/gv;)Lnbisdk/ql;
    .locals 7

    const-wide/high16 v5, 0x1000

    new-instance v1, Lnbisdk/ze;

    const-string v0, "iden"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v2

    const/16 v0, 0xd

    invoke-interface {v2, v0}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/ze;

    const-string v3, "emulator"

    invoke-direct {v0, v3, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :cond_0
    new-instance v0, Lnbisdk/ze;

    const-string v3, "want-iden-receipt"

    invoke-direct {v0, v3, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {p0}, Lnbisdk/gv;->getClientGuid()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_10

    new-instance v0, Lnbisdk/ze;

    const-string v3, "want-client-guid-assigned"

    invoke-direct {v0, v3, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :goto_1
    invoke-virtual {p0}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "credential"

    invoke-virtual {p0}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    :cond_2
    const-string v0, "language"

    invoke-virtual {p0}, Lnbisdk/gv;->aS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-virtual {p0}, Lnbisdk/gv;->aR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/gv;->gJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mdn"

    invoke-virtual {p0}, Lnbisdk/gv;->gJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v0, v3, v4}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {p0}, Lnbisdk/gv;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "country-code"

    invoke-static {v1, v3, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "carrier"

    invoke-virtual {p0}, Lnbisdk/gv;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client-session"

    sget-wide v3, Lnbisdk/tt;->bp:J

    invoke-static {v1, v0, v3, v4}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v0, "gwsid"

    invoke-virtual {p0, v0}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "gwsubid"

    invoke-virtual {v1, v3, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lnbisdk/gv;->gM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "device-serial-number"

    invoke-virtual {p0}, Lnbisdk/gv;->gM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x27

    invoke-interface {v2, v0}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "fileset"

    invoke-virtual {v1, v2, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lnbisdk/gv;->gO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "min"

    invoke-virtual {p0}, Lnbisdk/gv;->gO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lnbisdk/gv;->gP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "platform-id"

    invoke-virtual {p0}, Lnbisdk/gv;->gP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lnbisdk/gv;->gQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "firmware-version"

    invoke-virtual {p0}, Lnbisdk/gv;->gQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lnbisdk/gv;->gT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "class-id"

    invoke-virtual {p0}, Lnbisdk/gv;->gT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lnbisdk/gv;->gR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "price-type"

    invoke-virtual {p0}, Lnbisdk/gv;->gR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lnbisdk/gv;->gS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ads-app-id"

    invoke-virtual {p0}, Lnbisdk/gv;->gS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lnbisdk/gv;->gN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "device-unique-id"

    invoke-virtual {p0}, Lnbisdk/gv;->gN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_f

    invoke-static {v5, v6}, Lnbisdk/jg;->i(J)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lnbisdk/ql;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v5, v6, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_f
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v3, "client-guid"

    invoke-virtual {v1, v3, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    goto/16 :goto_1
.end method


# virtual methods
.method public J()I
    .locals 1

    iget v0, p0, Lnbisdk/s;->ay:I

    return v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Lnbisdk/gv;)V
    .locals 3

    iput-object p1, p0, Lnbisdk/s;->aw:Lnbisdk/gv;

    iget-boolean v0, p0, Lnbisdk/s;->O:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/gv;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/s;->ax:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lnbisdk/gv;->J()I

    move-result v0

    iput v0, p0, Lnbisdk/s;->ay:I

    iget v0, p0, Lnbisdk/s;->ay:I

    if-gtz v0, :cond_0

    const/16 v0, 0x1fc0

    iput v0, p0, Lnbisdk/s;->ay:I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lnbisdk/me;->sH:Z

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/gv;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/s;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/kz;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "default_apn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mS()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->gL()[Lnbisdk/tg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/s;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/s;->aw:Lnbisdk/gv;

    invoke-virtual {v0, p1}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
