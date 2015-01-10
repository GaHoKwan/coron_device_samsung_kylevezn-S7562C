.class final Lcom/nbi/map/android/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic yQ:Lcom/nbi/map/android/c;


# direct methods
.method constructor <init>(Lcom/nbi/map/android/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/c$1;->yQ:Lcom/nbi/map/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nbi/map/android/c$1;->yQ:Lcom/nbi/map/android/c;

    iget-object v0, v0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/b;->showTrafficLayer(Z)Z

    iget-object v0, p0, Lcom/nbi/map/android/c$1;->yQ:Lcom/nbi/map/android/c;

    iget-object v0, v0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/b;->showTrafficIncidentsLayer(Z)Z

    iget-object v0, p0, Lcom/nbi/map/android/c$1;->yQ:Lcom/nbi/map/android/c;

    invoke-static {v0}, Lcom/nbi/map/android/c;->b(Lcom/nbi/map/android/c;)V

    return-void
.end method
