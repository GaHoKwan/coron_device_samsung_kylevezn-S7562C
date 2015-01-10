.class final Lnbisdk/r$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Lnbisdk/r$b;",
        ">;"
    }
.end annotation


# instance fields
.field private tI:Lnbisdk/r$b;


# direct methods
.method public constructor <init>(Lnbisdk/r$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/r$a;->tI:Lnbisdk/r$b;

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/r$a;->tI:Lnbisdk/r$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnbisdk/r$a;->tI:Lnbisdk/r$b;

    iget-object v1, p0, Lnbisdk/r$a;->tI:Lnbisdk/r$b;

    iget-object v1, v1, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iput-object v1, p0, Lnbisdk/r$a;->tI:Lnbisdk/r$b;

    return-object v0
.end method
