.class public final Lnbisdk/ss;
.super Ljava/lang/Object;


# instance fields
.field private bx:I

.field private jy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnbisdk/ss;->bx:I

    iput-boolean v0, p0, Lnbisdk/ss;->jy:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lnbisdk/xk;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lnbisdk/dz;->eJ()Lnbisdk/pp;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnbisdk/dz;->eJ()Lnbisdk/pp;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/xk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/pp;->ay(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/xk;->oF()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnbisdk/dz;->eJ()Lnbisdk/pp;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/xk;->oF()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/pp;->f(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnbisdk/xk;->oF()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/xk;->oF()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
