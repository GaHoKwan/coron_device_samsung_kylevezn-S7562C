.class public Lnbisdk/nk;
.super Lnbisdk/im;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/nk$a;
    }
.end annotation


# instance fields
.field private EA:Lnbisdk/nk$a;

.field private lB:Lnbisdk/ha;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/im;-><init>()V

    return-void
.end method

.method static synthetic a(Lnbisdk/nk;Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOWN"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "UP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MOVE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CANCEL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "OUTSIDE"

    aput-object v3, v1, v2

    const-string v2, "POINTER_DOWN"

    aput-object v2, v1, v6

    const-string v2, "POINTER_UP"

    aput-object v2, v1, v7

    const/4 v2, 0x7

    const-string v3, "7?"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8?"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9?"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    const-string v5, "event ACTION_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_1

    :cond_0
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GestureHandler_API_5"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lnbisdk/ha;Lnbisdk/jk;)V
    .locals 2

    iput-object p2, p0, Lnbisdk/nk;->lB:Lnbisdk/ha;

    new-instance v0, Lnbisdk/nk$a;

    iget-object v1, p0, Lnbisdk/nk;->lB:Lnbisdk/ha;

    invoke-direct {v0, p0, v1}, Lnbisdk/nk$a;-><init>(Lnbisdk/nk;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnbisdk/nk;->EA:Lnbisdk/nk$a;

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method public final gW()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/nk;->EA:Lnbisdk/nk$a;

    invoke-virtual {v0, p1}, Lnbisdk/nk$a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
