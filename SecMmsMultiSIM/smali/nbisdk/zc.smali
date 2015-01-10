.class public final Lnbisdk/zc;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/kr;


# instance fields
.field private EX:Lnbisdk/pz;

.field private EY:Lnbisdk/hg;

.field private EZ:Lnbisdk/b;

.field private Fa:Lnbisdk/yc;

.field private Fb:Lnbisdk/vv;

.field private Fc:Lnbisdk/zj;

.field private Fd:Lnbisdk/tn;

.field private Fe:Lnbisdk/zv;

.field private Ff:Lnbisdk/mu;

.field private Fg:Lnbisdk/vu;

.field private aa:Z

.field private db:Z


# direct methods
.method protected constructor <init>(Lnbisdk/h;Lnbisdk/mu;Lnbisdk/vz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnbisdk/zc;-><init>(Lnbisdk/h;Lnbisdk/mu;Lnbisdk/vz;[Lnbisdk/lm;)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/h;Lnbisdk/mu;Lnbisdk/vz;[Lnbisdk/lm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnbisdk/zc;->Ff:Lnbisdk/mu;

    if-eqz p4, :cond_0

    new-instance v0, Lnbisdk/zp;

    invoke-direct {v0, p0, p4}, Lnbisdk/zp;-><init>(Lnbisdk/zc;[Lnbisdk/lm;)V

    iput-object v0, p0, Lnbisdk/zc;->EY:Lnbisdk/hg;

    :goto_0
    new-instance v0, Lnbisdk/pz;

    invoke-direct {v0}, Lnbisdk/pz;-><init>()V

    iput-object v0, p0, Lnbisdk/zc;->EX:Lnbisdk/pz;

    new-instance v0, Lnbisdk/b;

    invoke-direct {v0, p0}, Lnbisdk/b;-><init>(Lnbisdk/zc;)V

    iput-object v0, p0, Lnbisdk/zc;->EZ:Lnbisdk/b;

    new-instance v0, Lnbisdk/vv;

    invoke-direct {v0}, Lnbisdk/vv;-><init>()V

    iput-object v0, p0, Lnbisdk/zc;->Fb:Lnbisdk/vv;

    new-instance v0, Lnbisdk/zj;

    invoke-direct {v0, p0}, Lnbisdk/zj;-><init>(Lnbisdk/zc;)V

    iput-object v0, p0, Lnbisdk/zc;->Fc:Lnbisdk/zj;

    new-instance v0, Lnbisdk/tn;

    invoke-direct {v0}, Lnbisdk/tn;-><init>()V

    iput-object v0, p0, Lnbisdk/zc;->Fd:Lnbisdk/tn;

    new-instance v0, Lnbisdk/zv;

    invoke-direct {v0}, Lnbisdk/zv;-><init>()V

    iput-object v0, p0, Lnbisdk/zc;->Fe:Lnbisdk/zv;

    new-instance v0, Lnbisdk/nr;

    invoke-direct {v0}, Lnbisdk/nr;-><init>()V

    new-instance v0, Lnbisdk/vu;

    invoke-direct {v0, p0}, Lnbisdk/vu;-><init>(Lnbisdk/zc;)V

    iput-object v0, p0, Lnbisdk/zc;->Fg:Lnbisdk/vu;

    iget-object v0, p0, Lnbisdk/zc;->Fg:Lnbisdk/vu;

    invoke-virtual {p1}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/vu;->d(Lnbisdk/de;)V

    iget-object v0, p0, Lnbisdk/zc;->Fg:Lnbisdk/vu;

    invoke-virtual {p1}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/vu;->a(Lnbisdk/br;)V

    new-instance v0, Lnbisdk/m;

    invoke-direct {v0}, Lnbisdk/m;-><init>()V

    return-void

    :cond_0
    new-instance v0, Lnbisdk/zp;

    invoke-direct {v0, p0, p3}, Lnbisdk/zp;-><init>(Lnbisdk/zc;Lnbisdk/vz;)V

    iput-object v0, p0, Lnbisdk/zc;->EY:Lnbisdk/hg;

    goto :goto_0
.end method

.method protected constructor <init>(Lnbisdk/h;Lnbisdk/mu;[Lnbisdk/lm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnbisdk/zc;-><init>(Lnbisdk/h;Lnbisdk/mu;Lnbisdk/vz;[Lnbisdk/lm;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/yc;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/zc;->Fa:Lnbisdk/yc;

    return-void
.end method

.method public final a(Lnbisdk/zj;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/zc;->Fc:Lnbisdk/zj;

    return-void
.end method

.method public final as()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/zc;->db:Z

    return v0
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/zc;->db:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/zc;->aa:Z

    return-void
.end method

.method public final iV()Lnbisdk/zj;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Fc:Lnbisdk/zj;

    return-object v0
.end method

.method public final p()Lnbisdk/hg;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->EY:Lnbisdk/hg;

    return-object v0
.end method

.method public final pi()Lnbisdk/mu;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Ff:Lnbisdk/mu;

    return-object v0
.end method

.method public final pj()Lnbisdk/vu;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Fg:Lnbisdk/vu;

    return-object v0
.end method

.method public final pk()Lnbisdk/vv;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Fb:Lnbisdk/vv;

    return-object v0
.end method

.method public final pl()Lnbisdk/b;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->EZ:Lnbisdk/b;

    return-object v0
.end method

.method public final pm()Lnbisdk/yc;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Fa:Lnbisdk/yc;

    return-object v0
.end method

.method public final pn()Lnbisdk/zv;
    .locals 1

    iget-object v0, p0, Lnbisdk/zc;->Fe:Lnbisdk/zv;

    return-object v0
.end method

.method public final po()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/zc;->aa:Z

    return v0
.end method
