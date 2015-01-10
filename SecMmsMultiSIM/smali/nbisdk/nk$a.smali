.class public final Lnbisdk/nk$a;
.super Landroid/view/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic tW:Lnbisdk/nk;


# direct methods
.method public constructor <init>(Lnbisdk/nk;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/nk$a;->tW:Lnbisdk/nk;

    invoke-direct {p0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/nk$a;->tW:Lnbisdk/nk;

    invoke-static {v0, p1}, Lnbisdk/nk;->a(Lnbisdk/nk;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
