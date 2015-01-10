.class final Lnbisdk/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Lnbisdk/ch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnbisdk/ch;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic au:Lnbisdk/p;

.field private currentIndex:I

.field private pS:[Lnbisdk/p$a;

.field private pT:Lnbisdk/fz;


# direct methods
.method constructor <init>(Lnbisdk/p;Lnbisdk/fz;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/p$b;->au:Lnbisdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnbisdk/p;->dL()I

    move-result v0

    new-array v0, v0, [Lnbisdk/p$a;

    iput-object v0, p0, Lnbisdk/p$b;->pS:[Lnbisdk/p$a;

    invoke-direct {p0}, Lnbisdk/p$b;->iT()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lnbisdk/p$b;->pT:Lnbisdk/fz;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/p$b;->pT:Lnbisdk/fz;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/p$b;->currentIndex:I

    return-void
.end method

.method private iT()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lnbisdk/fx;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT id, value  FROM \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnbisdk/p$b;->au:Lnbisdk/p;

    iget-object v4, v4, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnbisdk/p$a;

    iget-object v3, p0, Lnbisdk/p$b;->au:Lnbisdk/p;

    invoke-direct {v2, v3}, Lnbisdk/p$a;-><init>(Lnbisdk/p;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v2, Lnbisdk/p$a;->hx:[B

    iput v3, v2, Lnbisdk/p$a;->hw:I

    iget-object v3, p0, Lnbisdk/p$b;->pS:[Lnbisdk/p$a;

    aput-object v2, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-wide/high16 v2, 0x8

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public final cJ()I
    .locals 3

    iget v0, p0, Lnbisdk/p$b;->currentIndex:I

    iget-object v1, p0, Lnbisdk/p$b;->pS:[Lnbisdk/p$a;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lnbisdk/lw;

    const-string v1, "No More Records"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/p$b;->pS:[Lnbisdk/p$a;

    iget v1, p0, Lnbisdk/p$b;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnbisdk/p$b;->currentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lnbisdk/p$a;->hw:I

    return v0
.end method

.method public final cK()Z
    .locals 2

    iget v0, p0, Lnbisdk/p$b;->currentIndex:I

    iget-object v1, p0, Lnbisdk/p$b;->pS:[Lnbisdk/p$a;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lnbisdk/p$b;->pT:Lnbisdk/fz;

    check-cast p1, Lnbisdk/p$a;

    iget-object v1, p1, Lnbisdk/p$a;->hx:[B

    check-cast p2, Lnbisdk/p$a;

    iget-object v2, p2, Lnbisdk/p$a;->hx:[B

    invoke-interface {v0, v1, v2}, Lnbisdk/fz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
