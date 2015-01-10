.class Lcom/samsung/mms/util/SaveRestoreOperation$6;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$6;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$6;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 410
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$6;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 411
    return-void
.end method
