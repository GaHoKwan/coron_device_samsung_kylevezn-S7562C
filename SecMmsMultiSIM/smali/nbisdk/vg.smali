.class public final Lnbisdk/vg;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/zu;


# instance fields
.field private AU:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/vg;->AU:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Z)V
    .locals 2

    iget-object v1, p0, Lnbisdk/vg;->AU:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    sget-object v0, Lnbisdk/vg;->FF:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lnbisdk/vg;->FG:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Integer;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/vg;->AU:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
