.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6$1;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->HasKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 612
    :cond_0
    return-void
.end method
