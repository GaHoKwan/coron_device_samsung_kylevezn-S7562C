.class public final Lnbisdk/na;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private ay:I

.field private cT:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/na;->N:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/na;->cT:I

    iput p3, p0, Lnbisdk/na;->ay:I

    return-void
.end method


# virtual methods
.method public final kO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/na;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final kP()I
    .locals 1

    iget v0, p0, Lnbisdk/na;->cT:I

    return v0
.end method

.method public final kQ()I
    .locals 1

    iget v0, p0, Lnbisdk/na;->ay:I

    return v0
.end method
