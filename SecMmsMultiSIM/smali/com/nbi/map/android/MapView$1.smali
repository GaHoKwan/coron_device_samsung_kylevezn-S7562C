.class final Lcom/nbi/map/android/MapView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nbi/map/android/MapView;->q(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic tN:Lcom/nbi/map/android/MapView;


# direct methods
.method constructor <init>(Lcom/nbi/map/android/MapView;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/MapView$1;->tN:Lcom/nbi/map/android/MapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nbi/map/android/MapView$1;->tN:Lcom/nbi/map/android/MapView;

    invoke-static {v0}, Lcom/nbi/map/android/MapView;->a(Lcom/nbi/map/android/MapView;)Lcom/nbi/map/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/c;->iZ()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nbi/map/android/MapView$1;->tN:Lcom/nbi/map/android/MapView;

    invoke-static {v0}, Lcom/nbi/map/android/MapView;->b(Lcom/nbi/map/android/MapView;)Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
