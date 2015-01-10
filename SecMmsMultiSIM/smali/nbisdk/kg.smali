.class public Lnbisdk/kg;
.super Lnbisdk/im;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/kg$a;
    }
.end annotation


# instance fields
.field private Ec:Lnbisdk/kg$a;

.field private lB:Lnbisdk/ha;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/im;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lnbisdk/ha;Lnbisdk/jk;)V
    .locals 2

    iput-object p2, p0, Lnbisdk/kg;->lB:Lnbisdk/ha;

    new-instance v0, Lnbisdk/kg$a;

    iget-object v1, p0, Lnbisdk/kg;->lB:Lnbisdk/ha;

    invoke-direct {v0, v1}, Lnbisdk/kg$a;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnbisdk/kg;->Ec:Lnbisdk/kg$a;

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final gW()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/kg;->Ec:Lnbisdk/kg$a;

    invoke-virtual {v0, p1}, Lnbisdk/kg$a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
