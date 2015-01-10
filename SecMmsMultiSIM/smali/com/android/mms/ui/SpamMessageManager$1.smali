.class Lcom/android/mms/ui/SpamMessageManager$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->initListAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$1;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteAnimation()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onCancelDeleteAnimation()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onEndDeleteAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 496
    const-string v0, "Mms/MsgConversationListAnimation"

    const-string v1, "onEndDeleteConversationListAnimation START setDeleteModeLayout"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$1;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 498
    return-void
.end method

.method public onExitDeleteAnimation()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method
