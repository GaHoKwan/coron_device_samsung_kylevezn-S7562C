.class public final Lnbisdk/mc;
.super Lnbisdk/lv;


# instance fields
.field private no:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    iput-object p1, p0, Lnbisdk/mc;->no:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final id()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lnbisdk/mc;->no:Landroid/view/MotionEvent;

    return-object v0
.end method
