.class Lcom/android/mms/ui/ConversationComposer$2;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOldHeight:I

.field mOldWidth:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 413
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldWidth:I

    .line 416
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 421
    .local v2, newWidth:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 423
    .local v1, newHeight:I
    iget v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldWidth:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldHeight:I

    if-eq v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 425
    .local v0, isSizeChanged:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 426
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOnGlobalLayoutListener width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 429
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 430
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    .line 431
    iput v2, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldWidth:I

    .line 432
    iput v1, p0, Lcom/android/mms/ui/ConversationComposer$2;->mOldHeight:I

    .line 434
    :cond_1
    return-void

    .line 423
    .end local v0           #isSizeChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
