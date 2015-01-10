.class final Lnbisdk/q$b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private synthetic vd:Lnbisdk/q$b;


# direct methods
.method synthetic constructor <init>(Lnbisdk/q$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/q$b$b;-><init>(Lnbisdk/q$b;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/q$b;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/q$b$b;->vd:Lnbisdk/q$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/q$b$b;->vd:Lnbisdk/q$b;

    invoke-static {v0}, Lnbisdk/q$b;->a(Lnbisdk/q$b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/q$b$b;->vd:Lnbisdk/q$b;

    invoke-static {v0}, Lnbisdk/q$b;->a(Lnbisdk/q$b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lnbisdk/q$b$b;->vd:Lnbisdk/q$b;

    invoke-virtual {v0}, Lnbisdk/q$b;->oO()V

    return-void
.end method
