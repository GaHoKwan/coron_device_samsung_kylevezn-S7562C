.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->HasKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 572
    :cond_0
    return-void
.end method
