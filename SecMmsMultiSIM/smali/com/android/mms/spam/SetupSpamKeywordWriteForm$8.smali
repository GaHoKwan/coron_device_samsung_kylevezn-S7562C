.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$700(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    :cond_0
    return-void
.end method
