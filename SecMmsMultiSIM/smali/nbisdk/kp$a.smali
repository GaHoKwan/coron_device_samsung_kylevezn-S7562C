.class final Lnbisdk/kp$a;
.super Lnbisdk/ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private hP:Lnbisdk/ds;

.field private synthetic qd:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;Lnbisdk/ds;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp$a;->hP:Lnbisdk/ds;

    iput-object p2, p0, Lnbisdk/kp$a;->hP:Lnbisdk/ds;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    iget-object v4, p0, Lnbisdk/kp$a;->hP:Lnbisdk/ds;

    if-ne v4, v0, :cond_4

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/kp$a;->hP:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    new-instance v1, Lnbisdk/aw;

    iget-object v2, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-direct {v1, v2}, Lnbisdk/aw;-><init>(Lnbisdk/ds;)V

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/aw;)Lnbisdk/aw;

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/aw;->ao()Z

    :cond_2
    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/kp$a;->hP:Lnbisdk/ds;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    iget-boolean v0, v0, Lnbisdk/fb;->vh:Z

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/aw;->cancel()Z

    iget-object v0, p0, Lnbisdk/kp$a;->qd:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/aw;)Lnbisdk/aw;

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
