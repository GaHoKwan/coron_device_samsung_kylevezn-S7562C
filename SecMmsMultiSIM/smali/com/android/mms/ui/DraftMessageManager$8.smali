.class Lcom/android/mms/ui/DraftMessageManager$8;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->updateDeleteModeListActionBar(I)V
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
    .line 1089
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0
.end method
