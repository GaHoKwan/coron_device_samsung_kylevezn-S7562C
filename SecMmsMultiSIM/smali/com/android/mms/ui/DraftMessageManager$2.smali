.class Lcom/android/mms/ui/DraftMessageManager$2;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->initListAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteAnimation()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onCancelDeleteAnimation()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onEndDeleteAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 466
    const-string v0, "Mms/MsgConversationListAnimation"

    const-string v1, "onEndDeleteConversationListAnimation START setDeleteModeLayout"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    .line 468
    return-void
.end method

.method public onExitDeleteAnimation()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method
