.class Lcom/android/mms/ui/LockedMessageManager$7;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$7;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1311
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$7;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$7;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$900(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$7;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$900(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$7;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0
.end method
