.class Lcom/android/mms/ui/BoxListFrame$15;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->updateDeleteModeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$15;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1674
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$15;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$15;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$15;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1000(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$15;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto :goto_0
.end method
