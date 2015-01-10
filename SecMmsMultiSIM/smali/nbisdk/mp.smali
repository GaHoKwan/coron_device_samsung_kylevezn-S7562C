.class public final Lnbisdk/mp;
.super Ljava/lang/Object;


# instance fields
.field private final aB:Ljava/util/Vector;

.field private final jy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/mp;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/mp;->aB:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/mp;->jy:Z

    return-void
.end method


# virtual methods
.method public final b(Lnbisdk/eu;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/mp;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final kc()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/mp;->aB:Ljava/util/Vector;

    return-object v0
.end method

.method public final kd()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/mp;->jy:Z

    return v0
.end method
