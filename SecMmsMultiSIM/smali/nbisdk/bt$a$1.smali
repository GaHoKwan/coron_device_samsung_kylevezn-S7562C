.class final Lnbisdk/bt$a$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic wN:Lnbisdk/bt$a;


# direct methods
.method constructor <init>(Lnbisdk/bt$a;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bt$a$1;->wN:Lnbisdk/bt$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt$a$1;->wN:Lnbisdk/bt$a;

    invoke-static {v0}, Lnbisdk/bt$a;->a(Lnbisdk/bt$a;)V

    return-void
.end method
