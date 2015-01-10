.class public final Lnbisdk/fx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/fx$a;
    }
.end annotation


# static fields
.field private static lock:Ljava/lang/Object;

.field private static pI:Lnbisdk/fx$a;

.field private static pJ:I


# instance fields
.field private pK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnbisdk/fx;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lnbisdk/fx;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lnbisdk/fx;->pJ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnbisdk/fx;->pJ:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DbAccess open, ref count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lnbisdk/fx;->pJ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, 0x8

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/fx;->pK:Z

    sget-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/fx$a;

    invoke-direct {v0, p1}, Lnbisdk/fx$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-boolean v0, p0, Lnbisdk/fx;->pK:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lnbisdk/fx;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lnbisdk/fx;->pJ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lnbisdk/fx;->pJ:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DbAccess close, ref count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lnbisdk/fx;->pJ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, 0x8

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/fx;->pK:Z

    sget v0, Lnbisdk/fx;->pJ:I

    if-gtz v0, :cond_1

    sget-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/fx;->pI:Lnbisdk/fx$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/fx;->pK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/fx;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
