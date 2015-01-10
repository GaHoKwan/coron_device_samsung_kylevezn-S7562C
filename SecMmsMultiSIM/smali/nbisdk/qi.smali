.class final Lnbisdk/qi;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/pd;


# instance fields
.field private pl:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bh(I)Lnbisdk/pd;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lnbisdk/qi;

    invoke-direct {v0}, Lnbisdk/qi;-><init>()V

    iput p0, v0, Lnbisdk/qi;->pl:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnbisdk/jw;

    invoke-direct {v0}, Lnbisdk/jw;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/ud;I)V
    .locals 1

    iget v0, p0, Lnbisdk/qi;->pl:I

    or-int/2addr v0, p2

    iput v0, p0, Lnbisdk/qi;->pl:I

    return-void
.end method

.method public final b(Lnbisdk/ud;I)V
    .locals 2

    iget v0, p0, Lnbisdk/qi;->pl:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnbisdk/qi;->pl:I

    iget v0, p0, Lnbisdk/qi;->pl:I

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/jw;

    invoke-direct {v0}, Lnbisdk/jw;-><init>()V

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    :cond_0
    return-void
.end method
