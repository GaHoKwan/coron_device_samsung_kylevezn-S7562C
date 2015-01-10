.class public final Lnbisdk/me;
.super Ljava/lang/Object;


# static fields
.field public static DEBUG:Z

.field public static sA:Ljava/lang/String;

.field public static sB:Z

.field public static sC:Z

.field public static sD:Z

.field public static sE:Z

.field public static sF:Z

.field public static sG:Z

.field public static sH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "AB"

    sput-object v0, Lnbisdk/me;->sA:Ljava/lang/String;

    sput-boolean v2, Lnbisdk/me;->DEBUG:Z

    sput-boolean v1, Lnbisdk/me;->sB:Z

    sput-boolean v1, Lnbisdk/me;->sC:Z

    sput-boolean v1, Lnbisdk/me;->sD:Z

    sput-boolean v1, Lnbisdk/me;->sE:Z

    sput-boolean v1, Lnbisdk/me;->sF:Z

    sput-boolean v2, Lnbisdk/me;->sG:Z

    sput-boolean v1, Lnbisdk/me;->sH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/ev;)V
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->DEBUG:Z

    sput-boolean v2, Lnbisdk/xo;->eJ:Z

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sB:Z

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sC:Z

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sD:Z

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sE:Z

    goto :goto_1

    :sswitch_5
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    goto :goto_1

    :sswitch_6
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sF:Z

    goto :goto_1

    :sswitch_7
    const/16 v2, 0x14

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sG:Z

    goto :goto_1

    :sswitch_8
    const/16 v2, 0x20

    invoke-interface {p0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v2

    sput-boolean v2, Lnbisdk/me;->sH:Z

    goto :goto_1

    :sswitch_9
    const/16 v2, 0x10

    invoke-interface {p0, v2}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sput-object v2, Lnbisdk/me;->sA:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_3
        0xa -> :sswitch_6
        0x10 -> :sswitch_9
        0x14 -> :sswitch_7
        0x20 -> :sswitch_8
    .end sparse-switch
.end method
