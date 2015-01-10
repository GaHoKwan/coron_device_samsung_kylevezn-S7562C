.class public final Lnbisdk/mk;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/nd;


# static fields
.field private static sK:Lnbisdk/mk;


# instance fields
.field private nn:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/mk;->nn:Landroid/content/Context;

    return-void
.end method

.method public static final h(Landroid/content/Context;)Lnbisdk/mk;
    .locals 1

    sget-object v0, Lnbisdk/mk;->sK:Lnbisdk/mk;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/mk;

    invoke-direct {v0, p0}, Lnbisdk/mk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/mk;->sK:Lnbisdk/mk;

    :cond_0
    sget-object v0, Lnbisdk/mk;->sK:Lnbisdk/mk;

    return-object v0
.end method


# virtual methods
.method public final aL(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnbisdk/he;

    iget-object v1, p0, Lnbisdk/mk;->nn:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lnbisdk/he;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/p;->hX()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnbisdk/fx;

    iget-object v2, p0, Lnbisdk/mk;->nn:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnbisdk/fx;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnbisdk/fx;->close()V

    :cond_0
    invoke-virtual {v0}, Lnbisdk/p;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {v1, v0}, Lnbisdk/lw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d(Ljava/lang/String;Z)Lnbisdk/cz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnbisdk/he;

    iget-object v1, p0, Lnbisdk/mk;->nn:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lnbisdk/he;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/p;->hX()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/p;->close()V

    new-instance v0, Lnbisdk/lw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method
