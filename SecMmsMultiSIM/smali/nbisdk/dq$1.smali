.class final Lnbisdk/dq$1;
.super Landroid/view/animation/LinearInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/dq;->initialize(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fW:Lnbisdk/dq;


# direct methods
.method constructor <init>(Lnbisdk/dq;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dq$1;->fW:Lnbisdk/dq;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lnbisdk/dq$1;->fW:Lnbisdk/dq;

    iput v0, v1, Lnbisdk/dq;->wt:F

    const-string v1, "ZoomAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInterpolation() - value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method