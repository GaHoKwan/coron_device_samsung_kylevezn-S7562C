.class final Lnbisdk/tp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic yy:Lnbisdk/au$a;


# direct methods
.method constructor <init>(Lnbisdk/au$a;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/tp;->yy:Lnbisdk/au$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/tp;->yy:Lnbisdk/au$a;

    invoke-static {v0}, Lnbisdk/au$a;->a(Lnbisdk/au$a;)V

    return-void
.end method
