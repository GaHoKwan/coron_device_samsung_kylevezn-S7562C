.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    :cond_0
    return-void
.end method
