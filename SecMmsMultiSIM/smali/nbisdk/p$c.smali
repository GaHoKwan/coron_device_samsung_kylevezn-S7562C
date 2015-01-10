.class final Lnbisdk/p$c;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private Dc:Landroid/database/sqlite/SQLiteDatabase;

.field private Dd:Lnbisdk/fx;

.field private synthetic au:Lnbisdk/p;


# direct methods
.method public constructor <init>(Lnbisdk/p;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/p$c;->au:Lnbisdk/p;

    const-string v0, "InsertThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 4

    const-wide/high16 v2, 0x8

    const-string v0, "beginTransaction"

    const/16 v1, 0x8

    invoke-static {v0, v2, v3, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :try_start_0
    new-instance v0, Lnbisdk/fx;

    iget-object v1, p0, Lnbisdk/p$c;->au:Lnbisdk/p;

    invoke-static {v1}, Lnbisdk/p;->b(Lnbisdk/p;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/fx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;J)V

    goto :goto_0
.end method

.method public final endTransaction()V
    .locals 6

    const-wide/high16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "endTransaction"

    const/16 v1, 0x8

    invoke-static {v0, v4, v5, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    invoke-virtual {v0}, Lnbisdk/fx;->close()V

    iput-object v3, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/high16 v1, 0x8

    :try_start_1
    invoke-static {v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    invoke-virtual {v0}, Lnbisdk/fx;->close()V

    iput-object v3, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/p$c;->Dc:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v1, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    invoke-virtual {v1}, Lnbisdk/fx;->close()V

    iput-object v3, p0, Lnbisdk/p$c;->Dd:Lnbisdk/fx;

    :cond_1
    throw v0

    :cond_2
    const-string v0, "InsertThread db connection is NULL!"

    const/4 v1, 0x1

    invoke-static {v0, v4, v5, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    goto :goto_0
.end method
