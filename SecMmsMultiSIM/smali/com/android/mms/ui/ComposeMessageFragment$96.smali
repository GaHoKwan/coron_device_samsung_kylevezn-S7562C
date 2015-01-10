.class Lcom/android/mms/ui/ComposeMessageFragment$96;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOldHeight:I

.field mOldWidth:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9794
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9795
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldWidth:I

    .line 9796
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 9801
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 9802
    .local v2, newWidth:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 9804
    .local v1, newHeight:I
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldWidth:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldHeight:I

    if-eq v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 9805
    .local v0, isSizeChanged:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9806
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9807
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldWidth:I

    .line 9808
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$96;->mOldHeight:I

    .line 9810
    :cond_1
    return-void

    .line 9804
    .end local v0           #isSizeChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
