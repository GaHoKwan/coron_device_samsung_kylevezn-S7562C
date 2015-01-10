.class Lcom/android/mms/ui/ReservationMessageManager$7;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$900(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$900(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0
.end method
