.class public final Lnbisdk/mn;
.super Lnbisdk/lv;


# instance fields
.field private rD:I

.field private sN:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    iput-object p1, p0, Lnbisdk/mn;->sN:Landroid/view/KeyEvent;

    iput p2, p0, Lnbisdk/mn;->rD:I

    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    iget v0, p0, Lnbisdk/mn;->rD:I

    return v0
.end method

.method public final ka()Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lnbisdk/mn;->sN:Landroid/view/KeyEvent;

    return-object v0
.end method
