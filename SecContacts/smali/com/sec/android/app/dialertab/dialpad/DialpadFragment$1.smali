.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 655
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x0

    .line 665
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialpadChooserVisible()Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 676
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$202(Z)Z

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout()V

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    .line 680
    :cond_0
    return-void
.end method
