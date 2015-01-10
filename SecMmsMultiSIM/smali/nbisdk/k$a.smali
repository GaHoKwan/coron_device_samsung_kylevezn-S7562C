.class final Lnbisdk/k$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/k$a$a;
    }
.end annotation


# instance fields
.field private final gM:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final gN:Ljava/lang/Thread;

.field private gO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnbisdk/k$a;->gM:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lnbisdk/k$a$a;

    invoke-direct {v0, p0}, Lnbisdk/k$a$a;-><init>(Lnbisdk/k$a;)V

    iput-object v0, p0, Lnbisdk/k$a;->gN:Ljava/lang/Thread;

    iget-object v0, p0, Lnbisdk/k$a;->gN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/k$a;->gO:Z

    return-void
.end method

.method static synthetic a(Lnbisdk/k$a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lnbisdk/k$a;->gM:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lnbisdk/k$a;->gM:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/k$a;->gO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$a;->gM:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final shutdown()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/k$a;->gO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/k$a;->gO:Z

    iget-object v0, p0, Lnbisdk/k$a;->gN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lnbisdk/k$a;->gM:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    return-void
.end method
