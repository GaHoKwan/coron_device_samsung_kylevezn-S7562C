.class public final Lnbisdk/zv;
.super Ljava/lang/Object;


# instance fields
.field private FH:Lcom/navbuilder/nb/a;

.field private O:Z

.field private aH:Z

.field private bG:Z

.field private eM:Z

.field private jy:Z

.field private mI:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/zv;)V
    .locals 1

    iget-boolean v0, p1, Lnbisdk/zv;->mI:Z

    iput-boolean v0, p0, Lnbisdk/zv;->mI:Z

    iget-boolean v0, p1, Lnbisdk/zv;->jy:Z

    iput-boolean v0, p0, Lnbisdk/zv;->jy:Z

    iget-boolean v0, p1, Lnbisdk/zv;->aH:Z

    iput-boolean v0, p0, Lnbisdk/zv;->aH:Z

    iget-boolean v0, p1, Lnbisdk/zv;->O:Z

    iput-boolean v0, p0, Lnbisdk/zv;->O:Z

    iget-boolean v0, p1, Lnbisdk/zv;->eM:Z

    iput-boolean v0, p0, Lnbisdk/zv;->eM:Z

    iget-boolean v0, p1, Lnbisdk/zv;->bG:Z

    iput-boolean v0, p0, Lnbisdk/zv;->bG:Z

    iget-object v0, p1, Lnbisdk/zv;->FH:Lcom/navbuilder/nb/a;

    iput-object v0, p0, Lnbisdk/zv;->FH:Lcom/navbuilder/nb/a;

    return-void
.end method

.method public final ac(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/zv;->O:Z

    return-void
.end method
