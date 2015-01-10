.class public final Lnbisdk/hj;
.super Lnbisdk/tb;


# instance fields
.field mh:Z

.field public mi:Lnbisdk/ts;

.field public mj:Lcom/navbuilder/nb/b;

.field public mk:Ljava/lang/Object;

.field public ml:I

.field public mm:Lcom/navbuilder/nb/NBException;

.field public progress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnbisdk/tb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/hj;-><init>()V

    iput-boolean p1, p0, Lnbisdk/hj;->mh:Z

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lnbisdk/hj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnbisdk/hj;-><init>(Z)V

    iget-object v1, p0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iput-object v1, v0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v1, p0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iput-object v1, v0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget-object v1, p0, Lnbisdk/hj;->mk:Ljava/lang/Object;

    iput-object v1, v0, Lnbisdk/hj;->mk:Ljava/lang/Object;

    iget v1, p0, Lnbisdk/hj;->ml:I

    iput v1, v0, Lnbisdk/hj;->ml:I

    iget v1, p0, Lnbisdk/hj;->progress:I

    iput v1, v0, Lnbisdk/hj;->progress:I

    iget-object v1, p0, Lnbisdk/hj;->mm:Lcom/navbuilder/nb/NBException;

    iput-object v1, v0, Lnbisdk/hj;->mm:Lcom/navbuilder/nb/NBException;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iput-object v0, p0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iput-object v0, p0, Lnbisdk/hj;->mk:Ljava/lang/Object;

    iput v1, p0, Lnbisdk/hj;->ml:I

    iput v1, p0, Lnbisdk/hj;->progress:I

    iput-object v0, p0, Lnbisdk/hj;->mm:Lcom/navbuilder/nb/NBException;

    return-void
.end method
