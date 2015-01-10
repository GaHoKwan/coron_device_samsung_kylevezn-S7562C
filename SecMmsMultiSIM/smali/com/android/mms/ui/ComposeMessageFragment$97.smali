.class Lcom/android/mms/ui/ComposeMessageFragment$97;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 9816
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "oldFocus"
    .parameter "newFocus"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9821
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 9822
    .local v1, isOldViewInside:Z
    :goto_0
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 9824
    .local v0, isNewViewInside:Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 9825
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    .line 9833
    :cond_0
    :goto_2
    return-void

    .end local v0           #isNewViewInside:Z
    .end local v1           #isOldViewInside:Z
    :cond_1
    move v1, v3

    .line 9821
    goto :goto_0

    .restart local v1       #isOldViewInside:Z
    :cond_2
    move v0, v3

    .line 9822
    goto :goto_1

    .line 9826
    .restart local v0       #isNewViewInside:Z
    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 9827
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    goto :goto_2

    .line 9828
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9829
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$97;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    goto :goto_2
.end method
