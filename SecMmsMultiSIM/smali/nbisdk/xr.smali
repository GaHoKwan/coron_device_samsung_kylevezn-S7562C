.class public final Lnbisdk/xr;
.super Ljava/lang/Object;


# instance fields
.field AU:Ljava/util/Hashtable;

.field Dq:[Ljava/lang/String;

.field Dr:[Ljava/lang/String;

.field ay:I

.field bp:J

.field jy:Z

.field kC:[I

.field mJ:Z


# direct methods
.method private constructor <init>(JILjava/util/Hashtable;[Ljava/lang/String;[Ljava/lang/String;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/xr;->bp:J

    iput p3, p0, Lnbisdk/xr;->ay:I

    iput-object p4, p0, Lnbisdk/xr;->AU:Ljava/util/Hashtable;

    iput-object p5, p0, Lnbisdk/xr;->Dq:[Ljava/lang/String;

    iput-object p6, p0, Lnbisdk/xr;->Dr:[Ljava/lang/String;

    iput-object p7, p0, Lnbisdk/xr;->kC:[I

    iput-boolean p8, p0, Lnbisdk/xr;->mJ:Z

    return-void
.end method

.method public static b([Ljava/lang/String;)Lnbisdk/xr;
    .locals 12

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "createInstance"

    const-wide/16 v1, 0x4000

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lnbisdk/xr;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lnbisdk/xr;-><init>(JILjava/util/Hashtable;[Ljava/lang/String;[Ljava/lang/String;[IZ)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->a(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fileset info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v5, v3, [Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    const/4 v8, 0x0

    const/4 v0, 0x1

    move v9, v8

    move v8, v0

    :goto_1
    if-ge v9, v3, :cond_8

    aget-object v0, p0, v8

    const/16 v10, 0x2c

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lnbisdk/ju;->a(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    array-length v0, v10

    const/4 v11, 0x3

    if-eq v0, v11, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid file info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    aget-object v0, v10, v0

    aput-object v0, v5, v9

    const/4 v0, 0x1

    aget-object v0, v10, v0

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    aget-object v0, v10, v0

    :goto_2
    aput-object v0, v6, v9

    const/4 v0, 0x2

    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v7, v9

    aget-object v0, v6, v9

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    aget-object v0, v10, v0

    goto :goto_2

    :cond_8
    new-instance v0, Lnbisdk/xr;

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lnbisdk/xr;-><init>(JILjava/util/Hashtable;[Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0
.end method
