.class public final Lnbisdk/vk;
.super Lnbisdk/lv;


# instance fields
.field private AW:I

.field private sN:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    iput-object p1, p0, Lnbisdk/vk;->sN:Landroid/view/KeyEvent;

    iput p2, p0, Lnbisdk/vk;->AW:I

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    iput-object p1, p0, Lnbisdk/vk;->sN:Landroid/view/KeyEvent;

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/vk;->AW:I

    return-void
.end method


# virtual methods
.method public final ka()Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lnbisdk/vk;->sN:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final nU()I
    .locals 1

    iget v0, p0, Lnbisdk/vk;->AW:I

    return v0
.end method
