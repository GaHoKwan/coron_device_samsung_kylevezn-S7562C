.class public final Lnbisdk/xk;
.super Ljava/lang/Object;


# instance fields
.field private De:Ljava/lang/Throwable;

.field private L:Ljava/lang/String;

.field private bp:J

.field private bq:B


# direct methods
.method public constructor <init>(Ljava/lang/String;JB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lnbisdk/xk;->bp:J

    iput-byte p4, p0, Lnbisdk/xk;->bq:B

    iput-object p1, p0, Lnbisdk/xk;->L:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;JB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lnbisdk/xk;->bp:J

    iput-byte p4, p0, Lnbisdk/xk;->bq:B

    iput-object p1, p0, Lnbisdk/xk;->De:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/xk;->L:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method


# virtual methods
.method public final oF()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lnbisdk/xk;->De:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "[ "

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnbisdk/xk;->bp:J

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string v0, "Application"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v0, p0, Lnbisdk/xk;->bq:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/xk;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/high16 v4, 0x20

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "Audio"

    goto :goto_0

    :cond_1
    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const-string v0, "Common"

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x20

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string v0, "Event Search"

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x4000

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const-string v0, "Fileset"

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const-string v0, "Fuel Search"

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-string v0, "Geocode"

    goto :goto_0

    :cond_6
    const-wide/high16 v4, 0x10

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const-string v0, "GPS"

    goto :goto_0

    :cond_7
    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const-string v0, "Local Search"

    goto :goto_0

    :cond_8
    const-wide/16 v4, 0x100

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    const-string v0, "Map"

    goto :goto_0

    :cond_9
    const-wide/16 v4, 0x2000

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    const-string v0, "Place Messaging"

    goto/16 :goto_0

    :cond_a
    const-wide/16 v4, 0x10

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    const-string v0, "Movie Search"

    goto/16 :goto_0

    :cond_b
    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    const-string v0, "Navigation"

    goto/16 :goto_0

    :cond_c
    const-wide/16 v4, 0x800

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    const-string v0, "Announcement"

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v4, 0x4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    const-string v0, "Network"

    goto/16 :goto_0

    :cond_e
    const-wide/32 v4, 0x20000

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    const-string v0, "Paid Search"

    goto/16 :goto_0

    :cond_f
    const-wide/high16 v4, 0x1000

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    const-string v0, "Request"

    goto/16 :goto_0

    :cond_10
    const-wide/high16 v4, 0x2000

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    const-string v0, "SDK"

    goto/16 :goto_0

    :cond_11
    const-wide/32 v4, 0x8000

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    const-string v0, "SMS"

    goto/16 :goto_0

    :cond_12
    const-wide/high16 v4, 0x8

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    const-string v0, "Store"

    goto/16 :goto_0

    :cond_13
    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    const-string v0, "Sync"

    goto/16 :goto_0

    :cond_14
    const-wide/16 v4, 0x40

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    const-string v0, "Theater Search"

    goto/16 :goto_0

    :cond_15
    const-wide/high16 v4, 0x4000

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    const-string v0, "TPS"

    goto/16 :goto_0

    :cond_16
    const-wide/16 v4, 0x200

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    const-string v0, "Traffic"

    goto/16 :goto_0

    :cond_17
    const-wide/32 v4, 0x40000

    cmp-long v0, v2, v4

    if-nez v0, :cond_18

    const-string v0, "UI"

    goto/16 :goto_0

    :cond_18
    const-wide/16 v4, 0x1000

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    const-string v0, "Vector Tiles"

    goto/16 :goto_0

    :cond_19
    const-wide/16 v4, 0x80

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    const-string v0, "Venue Search"

    goto/16 :goto_0

    :cond_1a
    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    const-string v0, "Weather Search"

    goto/16 :goto_0

    :cond_1b
    const-wide/32 v4, 0x100000

    cmp-long v0, v2, v4

    if-nez v0, :cond_1c

    const-string v0, "QA Logging"

    goto/16 :goto_0

    :cond_1c
    const-wide/32 v4, 0x200000

    cmp-long v0, v2, v4

    if-nez v0, :cond_1d

    const-string v0, "MOTD"

    goto/16 :goto_0

    :cond_1d
    const-wide/32 v4, 0x400000

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    const-string v0, "ASR"

    goto/16 :goto_0

    :cond_1e
    const-wide/32 v4, 0x800000

    cmp-long v0, v2, v4

    if-nez v0, :cond_1f

    const-string v0, "Auth"

    goto/16 :goto_0

    :cond_1f
    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_20

    const-string v0, "Analytics"

    goto/16 :goto_0

    :cond_20
    const-wide/32 v4, 0x2000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_21

    const-string v0, "DataStore"

    goto/16 :goto_0

    :cond_21
    const-wide/32 v4, 0x4000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    const-string v0, "Cache"

    goto/16 :goto_0

    :cond_22
    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_23

    const-string v0, "Memory Profiling"

    goto/16 :goto_0

    :cond_23
    const-wide v4, 0x100000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    const-string v0, "Speed Profiling"

    goto/16 :goto_0

    :cond_24
    const-wide/32 v4, 0x20000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_25

    const-string v0, "Touch"

    goto/16 :goto_0

    :cond_25
    const-wide/32 v4, 0x8000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    const-string v0, "Settings"

    goto/16 :goto_0

    :cond_26
    const-wide/32 v4, 0x10000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_27

    const-string v0, "TileMaps"

    goto/16 :goto_0

    :cond_27
    const-wide/32 v4, 0x40000000

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    const-string v0, "Profile"

    goto/16 :goto_0

    :cond_28
    const-wide v4, 0x800000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_29

    const-string v0, "CellID"

    goto/16 :goto_0

    :cond_29
    const-wide v4, 0x1000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2a

    const-string v0, "Metadata"

    goto/16 :goto_0

    :cond_2a
    const-wide v4, 0x2000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2b

    const-string v0, "System Test"

    goto/16 :goto_0

    :cond_2b
    const-wide v4, 0x4000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2c

    const-string v0, "Enhanced Data Manager"

    goto/16 :goto_0

    :cond_2c
    const-wide v4, 0x10000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    const-string v0, "Download Manager"

    goto/16 :goto_0

    :cond_2d
    const-wide v4, 0x20000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2e

    const-string v0, "Single Search"

    goto/16 :goto_0

    :cond_2e
    const-wide v4, 0x40000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2f

    const-string v0, "Authentication"

    goto/16 :goto_0

    :cond_2f
    const-wide v4, 0x80000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_30

    const-string v0, "Unified Map"

    goto/16 :goto_0

    :cond_30
    const-wide v4, 0x100000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_31

    const-string v0, "Speed Limit Signs"

    goto/16 :goto_0

    :cond_31
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "Informational"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "Error"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "Severe"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "Warning"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
