.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$9;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$9;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddContactsDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3180
    return-void
.end method
