.class public final Lnbisdk/la;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ev;


# instance fields
.field private qF:Lnbisdk/av;

.field private qG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const-string v2, "google_sdk"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sdk"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "9991119100"

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Lnbisdk/la;->qG:Ljava/lang/String;

    new-instance v0, Lnbisdk/av;

    invoke-direct {v0, v3}, Lnbisdk/av;-><init>(I)V

    iput-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p2}, Lnbisdk/av;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    iget-object v2, p0, Lnbisdk/la;->qG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnbisdk/av;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnbisdk/av;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-direct {p0, p1}, Lnbisdk/la;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/av;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Lnbisdk/av;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qG:Ljava/lang/String;

    if-nez v0, :cond_3

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-array v1, v4, [B

    const/16 v2, 0x7b

    aput-byte v2, v1, v3

    iget-object v2, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v2, v0}, Lnbisdk/av;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lnbisdk/av;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Lnbisdk/av;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Lnbisdk/av;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Lnbisdk/av;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Lnbisdk/av;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Lnbisdk/av;->r(Ljava/lang/String;)V

    :cond_3
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/high16 v4, 0x4320

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v3, v0, v1}, Lnbisdk/av;->a(III)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move v2, v3

    goto/16 :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "com.motorola.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "CUSTOMERID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "com.verizon.hardware.telephony.lte"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.vzw.hardware.lte"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.verizon.hardware.telephony.ehrpd"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.vzw.hardware.ehrpd"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v3

    :goto_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Verizon"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v1, "Verizon"

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aU()Lnbisdk/gv;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0}, Lnbisdk/av;->aU()Lnbisdk/gv;

    move-result-object v0

    return-object v0
.end method

.method public final aW()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qG:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/bh;->g(I)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0}, Lnbisdk/av;->aW()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1}, Lnbisdk/av;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/la;->qF:Lnbisdk/av;

    invoke-virtual {v0, p1, p2}, Lnbisdk/av;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
