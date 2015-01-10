.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 686
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-boolean v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mEditDigits:Z

    if-nez v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mPreviousString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setPrefixNumber()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    .line 698
    :cond_0
    return-void
.end method
