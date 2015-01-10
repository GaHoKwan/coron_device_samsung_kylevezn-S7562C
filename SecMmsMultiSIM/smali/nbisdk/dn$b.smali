.class public Lnbisdk/dn$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# instance fields
.field private L:Ljava/lang/String;

.field private cT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnbisdk/dn$b;->cT:I

    iput-object p3, p0, Lnbisdk/dn$b;->L:Ljava/lang/String;

    return-void
.end method

.method public static W(Ljava/lang/String;)Lnbisdk/qv;
    .locals 1

    new-instance v0, Lnbisdk/qv;

    invoke-direct {v0, p0}, Lnbisdk/qv;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dn$b;->L:Ljava/lang/String;

    return-object v0
.end method

.method public fj()I
    .locals 1

    iget v0, p0, Lnbisdk/dn$b;->cT:I

    return v0
.end method

.method l(I)V
    .locals 0

    iput p1, p0, Lnbisdk/dn$b;->cT:I

    return-void
.end method

.method t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dn$b;->L:Ljava/lang/String;

    return-void
.end method
